module workshop::calculator;

public fun add(num1: u64, num2: u64) : u64{
    let answer = num1 + num2;
    answer
}

public fun subtract(num1: u64, num2: u64) : u64{
    let answer = num1 - num2;
    answer
}

public fun divide(num1: u64, num2: u64) : u64{
    let answer = num1 / num2;
    answer
}

public fun multiply(num1: u64, num2: u64) : u64{
    let answer = num1 * num2;
    answer
}