use Test2::Bundle::Extended -target => 'Test2::Workflow';
use Test2::Tools::Spec;

describe mock_spec => sub {
    mock Promise1 => ( add => [ check => sub { 1 } ] );

    before_all  ba => sub { mock Promise2 => ( add => [ check => sub { 2 } ])};
    before_each be => sub { mock Promise3 => ( add => [ check => sub { 3 } ])};

    is( Promise1->check, 1, "mock applies to describe block");

    around_each ae => sub {
        my $inner = shift;
        mock Promise4 => ( add => [check => sub { 4 } ]);
        $inner->();
    };

    tests the_test => sub {
        mock Promise5 => ( add => [check => sub { 5 } ]);

        is( Promise1->check, 1, "mock 1");
        is( Promise2->check, 2, "mock 2");
        is( Promise3->check, 3, "mock 3");
        is( Promise4->check, 4, "mock 4");
        is( Promise5->check, 5, "mock 5");
    };

    describe nested => sub {
        tests inner => sub {
            is( Promise1->check, 1, "mock 1");
            is( Promise2->check, 2, "mock 2");
            is( Promise3->check, 3, "mock 3");
            is( Promise4->check, 4, "mock 4");
            ok(!Promise5->can('check'), "mock 5 did not leak");
        };
    };
};

tests post => sub {
    ok(!"Promise$_"->can('check'), "mock $_ did not leak") for 1 .. 5;
};

ok(!"Promise$_"->can('check'), "mock $_ did not leak") for 1 .. 5;

done_testing;
