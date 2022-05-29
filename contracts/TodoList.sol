// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id ;
        string title ;
        string description ;
        bool completed ;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        // Initialize the list of tasks
        createTask(
            "Buy milk",
            "Buy some milk from the grocery store"
        );
        createTask(
            "Buy eggs",
            "Buy some eggs from the grocery store"
        );
        createTask(
            "Write paper",
            "Write some paper for the paper store"
        );
    }

    function createTask(string memory _title, string memory _description) public {
        tasks[taskCount] = Task(
            taskCount,
            _title,
            _description,
            false
        );
        taskCount++;
    }
    
    function toggleComplete(uint _taskId) public {
        tasks[_taskId].completed = !tasks[_taskId].completed;
    }
}