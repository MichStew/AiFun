sub largest-finder(@list) {
    my $largest = @list[0];
    for @list -> $num {
        if $num > $largest {
            $largest = $num;
        }
    }
    return $largest;
}

sub MAIN() {
    my @number-list = 33, 65, 27, 223, 63;
    
    my $result = largest-finder(@number-list);
    
    say "the largest number is $result";
}

MAIN();
