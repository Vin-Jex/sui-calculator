#[test_only]
module workshop::calculator_test;

use workshop::calculator;
use std::debug;

#[test]
fun test_add(){
    let result = calculator::add(3, 7);
    debug::print(&result);
}
 
#[test]
fun test_subtract(){
    let result = calculator::subtract(9, 7);
    debug::print(&b"Money"); 
}