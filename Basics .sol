//import solidity
pragma solidity ^0.4.0;

//import
import "filename";
import * as symbolname from "filename";
import {symbol1 as alias, symbol2} from "filename" 

// first contract 
contract SimpleContract {
    //state variable = current status of the variable
    uint storedData;
// setting the variable 

    // modifier = conditions to a function, or conditions before the run the function
    modifier onlyData() {
        require(
            storedData >= 0);
            _;
    }
    // the modifier will check that we have a data that is above or equal to 0 before it runs the function 
    // if the condition is met it will run the function passing the intigers and storing into the state variable 
    // function (name of the function, what time of parameters it takes, public/private, what happens in the function
    function set (uint x) public {
        storedData = x;
    }

    //event (address from, address to, integer)
    //things that happens in the actual program, when an event is initiated these are expected.
    event Sent(address from, address to, uint storedData);

}

// string 
// declare a string 
string name; 

//initialise a string 
string name = "manny";

//integers 
// initialise integers 
uint storedData = 34; 

//boolean
bool atrueorfalsevalue  = false; 

//address 
address walletAddress = 0x72ba77839b;

//arrays
// to declare a string has an array
string [] names; 

//bytes
bytes 32 code;

//struct to define
// create and declare your own type 
struct User {
    string firstName;
    string lastName;
}

//enums 
enum userType {buyer, seller}

//mappings = dictionaries 
mapping(address => uint) public balances;

// these units can be used but you cannot name variables with these = ether, sazbo, finney, wei. 

contract Simple {
    bool isEqual = (1 Ether == 5000 finney);
    // time units
    bool isTime = (1 == 1 seconds);
    //seconds, minutes, hours, days, weeks (always in plural)
    bool isTime = (1 hours == 60 minutes);
}

contract Simple1 {
    // block = block of information on the ethereum, and you have access to certain info in the block 
    block.number;
    block.difficulty;
    block.coinbase();

    // message = what is sent to you 
    msg.sender;
    msg.value;
    msg.data;

    // transaction 
    tx.origin;
}

// in solidity you can have functions return multiple outputs 
contract Simple2 {
    //function, name of the function (parameters or inputs of the function, you need to specify the type)
    //inputs
    function calcs(uint _a, uint _b) public pure 
    //outputs
    returns (uint o_sum, uint o_product) {
        //body of the function 
        o_sum = _a + _b;
        o_product = _a * _b;
    }
    // if a function is private it will only be accessible within that contract
    // if a function is public is possible to run outside the contract 
}

contract Simple2 { 

    //arithmetic operators + - * / % **
    uint a = 2;
    uint b = 3;
    uint c = a ** b;

    // logical operators 
    //! = negation 
    // n or && = and 
    //|| = or 
    // == = equality 
    // != = not equal 
    bool hasMoney = !false;

    //bitwise operators used for bytes
    // & = and 
    // | = or 
    // ^ = exclusive or 
    // ~ = negation
    // >> = bitwise right shift 
    // << = bitwise left shift
    bytes1 contractValue = 0x02 | 0x01; 
}

contract Simple3 {
    // conditionals  
    // if statement 
    if ( a == 2 ) {} // if the condition is met run the code in {} 

    // else statment 
    } else {} // otherwise run this other code 
     
     // while statement 
     while ( a >= 0 ) {} //code if condition is met 

     // do statment 
        do {

        } while ()// do this code first then check the conditions 
    // in while statment the condition is checked first, in do statement the code is run until condition is no longer true

    // for loop 
    for (uint i=0; i>= 50; i++) {
    }
    // the for loop runs until the result is bigger than the numbers indicated and then runs the code
}

