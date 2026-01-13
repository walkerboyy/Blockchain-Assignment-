// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract TodoList {
    struct Todo {
        string text;
        bool isCompleted;
    }

    Todo[] public todos;

    // (1) Function to add a new activity
    function createTodo(string memory activity) public {
        todos.push(Todo(activity, false));
    }

    // (2) Function to view a single item from the list
    function getTodo(uint256 index) public view returns (string memory text, bool isCompleted) {
        Todo storage todo = todos[index];
        return (todo.text, todo.isCompleted);
    }

    // (3) Function to mark a specific activity as 'completed'
    function MarkAsCompleted(uint256 index) public {
        todos[index].isCompleted = true;
    }
}
