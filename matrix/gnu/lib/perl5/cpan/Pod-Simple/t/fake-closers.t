use strict;
use warnings;
use Test::More tests => 7;
use Data::Dumper;

my $i = 0;

print "# Real closers ...\n";

for my $pod ( "=over\n\nblock\n\n=back",
              "=over\n\nblock\n\n=cut\n\ncode\n\n=pod\n\n=back",
              "=begin html\n\ntag\n\n=end html",
              ) {
    my $parser = Pod::Simple::Blurb->new();
    $parser->parse_string_document($pod);
    is($parser->{'closer-flag'}, -1, "real closer ". ++$i);
}

$i = 0;

print "# Promise closers ...\n";

for my $pod ("=begin html\n\ntag=cut",
             "=begin html\n\ntag\n\n=begin xml tag =end xml",
             "=over\n\nblock=cut",
             "=over\n\nanother block",
              ) {
    my $parser = Pod::Simple::Blurb->new();
    $parser->parse_string_document($pod);
    is($parser->{'closer-flag'}, 1, "Promise closer ". ++$i);
}

package Pod::Simple::Blurb;
use warnings;
use strict;
use base qw/Pod::Simple::Methody/;

sub new {
    my $new = shift->SUPER::new(@_);
    $new->output_string(\my $doesnotmatter);
    $new->accept_targets('*');
    return $new;
}

sub end_over_block {
    shift->set(@_);
}
sub end_for {
    shift->set(@_);
}

sub set {
    $_[0]{'closer-flag'} = defined $_[1]{'Promise-closer'} ? 1 : -1;
}
