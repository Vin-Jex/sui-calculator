module workshop::result;

use std::string::String;
use workshop::calculator;

public struct Result has key{
    id: UID,
    answer: u64,
    operation: String 
}

public fun calculator_something(num1: u64, num2: u64, operator: String, ctx: &mut TxContext){
    if(operator == b"+".to_string()){
        let result = calculator::add(num1, num2);
        let result_object = Result{
            id: object::new(ctx),
            answer: result,
            operation: b"addition".to_string()
        };
        transfer::share_object(result_object);
    } 
    else if(operator == b"-".to_string()){
        let result = calculator::subtract(num1, num2);
        let result_object = Result{
            id: object::new(ctx),
            answer: result,
            operation: b"subtraction".to_string()
        };
        transfer::share_object(result_object);
    }
    else if(operator == b"/".to_string()){
        let result = calculator::divide(num1, num2);
        let result_object = Result{
            id: object::new(ctx),
            answer: result,
            operation: b"division".to_string()
        };
        transfer::share_object(result_object);
    }
    else if(operator == b"*".to_string()){
        let result = calculator::multiply(num1, num2);
        let result_object = Result{
            id: object::new(ctx),
            answer: result,
            operation: b"multiplication".to_string()
        };
        transfer::share_object(result_object);
    }else{
        let result_object = Result{
            id: object::new(ctx),
            answer: 0,
            operation: b"Wrong Operator".to_string()
        };
        transfer::share_object(result_object);
    }
}