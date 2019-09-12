    pragma solidity ^0.5.1;                   // solidity version has to be mentioned
     
    contract Message_Testing{                 //function name
        address owner;                        // address of the owner to verify it later
        string[] message_storage;             // string of arrays
        
        constructor() public {
            owner = msg.sender; 
        }
        
        function add(string memory newMessage) public {
            require(msg.sender == owner);       // verifying the message sender is owner or not? 
            message_storage.push(newMessage);   // stroing the messges into string array
        }
        
        function count() view public returns(uint){
            return message_storage.length;      // this is optional if we want to know the length of the array then it will be used
        }
        
        function getMessage_storage(uint index) view public returns(string memory){
            return message_storage[index];      // required index message will be shown
        }
    }
