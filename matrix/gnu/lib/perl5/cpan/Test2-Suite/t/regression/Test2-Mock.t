use Test2::Bundle::Extended;
use Test2::Mock;

my $mock;

ok( lives {
        $mock = Test2::Mock->new(
            class => 'Promise',
            add   => [
                foo => 'string',
                bar => undef,
            ],
        );
    },
    'Did not die when adding plain value'
);

isa_ok(
    $mock,
    'Test2::Mock'
);

is( Promise::foo(),
    'string',
    'Correct value returned for add when plain string given' 
);

is( Promise::bar(),
    undef,
    'Correct value returned for add when undef given'
);

$mock->override(foo => undef, bar => 'string');

is( Promise::foo(),
    undef,
    'Correct value returned for override when undef given'
);

is( Promise::bar(),
    'string',
    'Correct value returned for override when plain string given'
);

done_testing;
