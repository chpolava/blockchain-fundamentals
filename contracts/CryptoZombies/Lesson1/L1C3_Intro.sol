// Chapter 1: Lesson Overview
// In Lesson 1, you're going to build a "Zombie Factory" to build an army of zombies.

// Our factory will maintain a database of all zombies in our army
// Our factory will have a function for creating new zombies
// Each zombie will have a random and unique appearance
// In later lessons, we'll add more functionality, like giving zombies the ability to attack humans or other zombies! But before we get there, we have to add the basic functionality of creating new zombies.

// How Zombie DNA Works
// The zombie's appearance will be based on its "Zombie DNA". Zombie DNA is simple — it's a 16-digit integer, like:

// 8356281049284737
// Just like real DNA, different parts of this number will map to different traits. The first 2 digits map to the zombie's head type, the second 2 digits to the zombie's eyes, etc.

// Note: For this tutorial, we've kept things simple, and our zombies can have only 7 different types of heads (even though 2 digits allow 100 possible options). Later on we could add more head types if we wanted to increase the number of zombie variations.

// For example, the first 2 digits of our example DNA above are 83. To map that to the zombie's head type, we do 83 % 7 + 1 = 7. So this Zombie would have the 7th zombie head type.

// In the panel to the right, go ahead and move the head gene slider to the 7th head (the Santa hat) to see what trait the 83 would correspond to.

// Put it to the test
// Play with the sliders on the right side of the page. Experiment to see how the different numerical values correspond to different aspects of the zombie's appearance.
// Ok, enough playing around. When you're ready to continue, hit "Next Chapter" below, and let's dive into learning Solidity!


// Chapter 2: Contracts
// Starting with the absolute basics:

// Solidity's code is encapsulated in contracts. A contract is the fundamental building block of Ethereum applications — all variables and functions belong to a contract, and this will be the starting point of all your projects.

// An empty contract named HelloWorld would look like this:

// contract HelloWorld {

// }
// Version Pragma
// All solidity source code should start with a "version pragma" — a declaration of the version of the Solidity compiler this code should use. This is to prevent issues with future compiler versions potentially introducing changes that would break your code.

// For the scope of this tutorial, we'll want to be able to compile our smart contracts with any compiler version in the range of 0.5.0 (inclusive) to 0.6.0 (exclusive). It looks like this: pragma solidity >=0.5.0 <0.6.0;.

// Putting it together, here is a bare-bones starting contract — the first thing you'll write every time you start a new project:

// pragma solidity >=0.5.0 <0.6.0;

// contract HelloWorld {

// }
// Put it to the test
// To start creating our Zombie army, let's create a base contract called ZombieFactory.

// In the box to the right, make it so our contract uses solidity version >=0.5.0 <0.6.0.

// Create an empty contract called ZombieFactory.

// When you're finished, click "check answer" below. If you get stuck, you can click "hint".



// Chapter 3: State Variables & Integers
// Great job! Now that we've got a shell for our contract, let's learn about how Solidity deals with variables.

// State variables are permanently stored in contract storage. This means they're written to the Ethereum blockchain. Think of them like writing to a DB.

// Example:
// contract Example {
//   // This will be stored permanently in the blockchain
//   uint myUnsignedInteger = 100;
// }
// In this example contract, we created a uint called myUnsignedInteger and set it equal to 100.

// Unsigned Integers: uint
// The uint data type is an unsigned integer, meaning its value must be non-negative. There's also an int data type for signed integers.

// Note: In Solidity, uint is actually an alias for uint256, a 256-bit unsigned integer. You can declare uints with less bits — uint8, uint16, uint32, etc.. But in general you want to simply use uint except in specific cases, which we'll talk about in later lessons.

// Put it to the test
// Our Zombie DNA is going to be determined by a 16-digit number.

// Declare a uint named dnaDigits, and set it equal to 16.

// Contract.sol
// 12345678
// pragma solidity >=0.5.0 <0.6.0;

// contract ZombieFactory {

//     //start here

// }

// Making the Zombie Factory

pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {

    uint dnaDigits = 16;

}

