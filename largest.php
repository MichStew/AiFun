<?php
function largest_finder(array $list): int {
    $largest = $list[0];
    foreach ($list as $num) {
        if ($num > $largest) {
            $largest = $num;
        }
    }
    return $largest;
}

function main() {
    $number_list = [33, 65, 27, 223, 63];
    $result = largest_finder($number_list);
    echo "the largest number is $result\n";
}

main();
