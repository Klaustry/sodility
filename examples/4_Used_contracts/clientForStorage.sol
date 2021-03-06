
/**
 * This file was generated by TONDev.
 * TONDev is a part of TON OS (see http://ton.dev).
 */
pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;
import 'storageInt.sol';

// This is class that describes you smart contract.
contract clientForStorage {
    // Contract can have an instance variables.
    // In this example instance variable `timestamp` is used to store the time of `constructor` or `touch`
    // function call
    uint32 public sample1;
    uint32 public sample2;


    function renderHelloWorld1 () public pure returns (string) {
        return 'helloWorld';
    }

    function renderHelloWorld2 () public pure returns (string) {
        tvm.accept();
        return 'helloWorld';
    }

    function store(storageInt currentStorage, uint val) public pure{
        tvm.accept();
        currentStorage.storeUInt(val);
    }

}
