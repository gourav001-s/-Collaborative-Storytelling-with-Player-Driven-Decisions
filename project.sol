// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CollaborativeStorytelling {
    struct StorySegment {
        address author;
        string content;
        uint256 timestamp;
    }

    StorySegment[] public story;

    event StoryUpdated(address indexed author, uint256 segmentIndex, string content);

    function addStorySegment(string memory _content) public {
        require(bytes(_content).length > 0, "Content cannot be empty");

        StorySegment memory newSegment = StorySegment({
            author: msg.sender,
            content: _content,
            timestamp: block.timestamp
        });

        story.push(newSegment);

        emit StoryUpdated(msg.sender, story.length - 1, _content);
    }

    function getStoryLength() public view returns (uint256) {
        return story.length;
    }

    function getStorySegment(uint256 _index) public view returns (address, string memory, uint256) {
        require(_index < story.length, "Index out of bounds");
        StorySegment memory segment = story[_index];
        return (segment.author, segment.content, segment.timestamp);
    }

    function getFullStory() public view returns (StorySegment[] memory) {
        return story;
    }
}
