# Collaborative Storytelling with Player-Driven Decisions

## Project Description
The Collaborative Storytelling platform allows participants to co-create a shared story by contributing segments sequentially. Each story segment is added by a player, stored immutably on the blockchain, and attributed to its author. This ensures transparency, creativity, and credit for contributors.

## Contract Address
0xF620FeB85a180fa16A25Cd464d177e274c44c548

## Key Features
- **Player-Driven Contributions**: Players can contribute to the story by adding their own segments.
- **Immutable Records**: Each story segment is permanently stored on the blockchain, ensuring a transparent history.
- **Authorship Attribution**: Automatically tracks and credits the author of each story segment.
- **Event Notifications**: Emits an event for every new segment added, allowing easy integration with external listeners.
- **Accessible Story History**: Provides functionality to view individual segments or the full story.

### Future Enhancements
1. Interact with the smart contract to call the `addStorySegment` function and add your segment.
2. Retrieve the story using `getStoryLength`, `getStorySegment`, or `getFullStory` functions.


