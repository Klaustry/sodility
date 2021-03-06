
/**
 * This file was generated by TONDev.
 * TONDev is a part of TON OS (see http://ton.dev).
 */
pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

// This is class that describes you smart contract.
contract Tasks {

    struct Task{
        string name;
        uint32 timestamp;
        bool isComplete;
    }

    mapping(uint8 => Task) public tasks;
    uint8 keyCount=0;

    function addTask(string name) public returns (string) {
        tvm.accept();
        tasks[keyCount]=Task(name,now,false);
        keyCount++;
    }
    function getCountOpenTasks() public returns (uint8) {
        tvm.accept();
        uint8 sum; 
        for (uint8 i=0; i<keyCount; i++) {
            if(tasks[i].isComplete == false) sum++;
        }
        return sum;
    }
    function getTasksNames() public returns (string[]) {
        tvm.accept();
        string[] names; 
        for (uint8 i=0; i<keyCount; i++) {
            names.push(tasks[i].name);
        }
        return names;
    }
    function getTaskByKey(uint8 key) public returns (string) {
        tvm.accept();
        return tasks[key].name;
    }
    function delTaskByKey(uint8 key) public returns (string) {
        tvm.accept();
        delete tasks[key];
    }
    function completeTaskByKey(uint8 key) public returns (string) {
        tvm.accept();
        tasks[key].isComplete = true;
    }


}
