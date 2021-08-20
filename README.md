# DoublePendulum-ButterflyEffect-Windows-Linux
Simulates a plethora of visually pleasing ways to see a double pendulum's behavior and it's chaotic nature, including the butterfly effect.

## Demo

(Quality much worse here due to gif-conversion)

![Demo](https://github.com/Zachhi/DoublePendulum-ButterflyEffect-VS/blob/master/pendulumDemoGif.gif)

Watch the video here (above is only a 10 second gif): 
 https://www.youtube.com/watch?v=sKC-cpFBwPs

# About
This program simulates a physically accurate double pendulum. The purpose is to show it's behavior as well as it's chaos/unpredictableness quality in multiple visual ways. A double pendulum is known for it's ability to simulate chaos and randomness. Given two double pendulums, spaced only a millionth of a radian apart, after 15-30 seconds these pendulums will have completley different motion. This is an example of it's chaos - it's starting position matters **signifigantly**. I have decided to represent these qualities in a variety of different visual ways using this program. 

However, we are assuming there are no external forces other than gravity. Things like friction and air resistance are non-existent. This is to make the simulation more interesting...especially the butterfly effect. I added 3 different style's, as well as 3 different trail types, in order to help us visualize the behavior and qualities of a double pendulum better. Note: Imagine a single pendulum; the bar holding the weight at the bottom is the "arm". The weight at the bottom is the "body". You also have the ability to make the double pendulums a triple, quad, etc. pendulum. However, only the double pendulum is physically accurate, but the others lead to some interesting results.

**Style 1**

The first style you can just think of as "normal". You can see the whole pendulum (arm + body) where the bodies are white and the arms are gray. This allows us to see how the double pendulum behaves under normal circumstances and how the arms and bodies move together. This shows us how a real-life pendulum were to look if it were in front of us.

**Style 2**

The second style you can think of as turning the lights off. Eveything becomes invisible except the second body. This is because the second body shows the entire double pendulum's movement. It is the main point of the pendulum. The first body simply moves within the same circle, and the arms are there just to hold and connect the bodies. The second body also takes on a random pastel color, instead of being white. This allows us to simulate the difference of movement between double pendulums, and allows us to see the randomness of the different bodies compared to each other. Say we spawn 5 double pendulums in style 2. We will only see 5 bodies, but you will see these 5 bodies move in completley different ways. Changing to style 2 while already in style 2 will change the bodies colors if you don't like them.

**Style 3**

Style 3 is the most interesting by far, and it simulates the butterfly affect. This style makes the bodies invisible and only the arms are visible. This is simply because it looks much better like this. When you click "A", 10,000 pendulums spawn, with a total angle difference of .0001 radians between the first and last pendulum. The amount of pendulums spawning and the angle difference can be changed. This allows us to see the complete chaos of doubule pendulums, as well as adding some stunning visual affects. Each pendulum will move nearly the same for the first 15-30 seconds. After a while, the pendulums start breaking up and going all over the place. This simulateds how pendulums that are spaced a millionth of a radian apart  will still be in comopletley different positions after some time. This shows the statement of "the slightest difference in the starting position leads to completley different results over time", hence the name "butterfly effect". Changing to style 3 while already in style 3 will change the colors if you dont like them. Changing colors also changes transparency in this order: Very transparent->slightly transparent->not transparent. Colors are chosen at random with an algorithm I created. It will either be a random color that fades from white->color->black, or random colors that fade from white->color->color->color->black. These different options lead to very visually pleasing results.

**Trails**

There are 3 different types of trails. The first one is fade. Trails have a set length and the back of the tail will always fade away to keep this length. The second one is always. The trail is always on screen and never dissapears. The last one is none. There is no trail. Mixing these trail types with the different styles lead to interesting results.

**Note: If you have access to Visual Studio, and would prefer that version, it can be found here: https://github.com/Zachhi/DoublePendulum-ButterflyEffect-VS**

## Controls

#### GUI
* Bottom Right:
  * Shows current game speed
  * Shows the current "style"
  * Shows current trail type
* Top Left: Shows the rules

#### Input
* LShift: See all the controls (will show in top left)
* A: Add a double pendulum. When on style 3, this will add 10,000 double pendulums with a total angle difference of .0001 radians so we can see the butterfly effect
* S: Add a section to the last pendulum spawned. This allows you to make triple/quad/etc pendulums. When on style 3, this will add a section to every existing pendulum
* Space: Pause the game
* Up/down arrow: Increase/decrease game speed
* 1: Change to style 1
* 2: Change to style 2
* 3: Change to style 3
* T: Change trail type
* Esc: Exit program


### Dependencies

* Windows or Linux
* SFML (Simple and Fast Multi-Media Library) 2.5.1 or later. However, I have set everything up already for your convenience. You will not be required to download/link any libraries. The downside is that the download is ~30 MB more.
* GCC 7.3.0 MinGW (32 bit) or later. If you want to use 64 bit version of GCC, download the SFML GCC 64-bit version from https://www.sfml-dev.org/download/sfml/2.5.1/ then simply replace the `include` and `lib` files in `sfmlFiles` with the `include` and `library` files you just downloaded. Then delete and replace the current .dlls with the .dll files in the `bin` folder you just downloaded.
* GNU Make 

**If you want to use Visual Studio, which would not require the use of a makefile (if you dont have GNU Make set up), scroll to the top to find the link**

### Installing And Executing

**Windows or Linux:**
* Download the source code from here, or copy the repository into your enviroment
* Open your terminal
* run the command `make` to build project
* Now run the executable by running the command `run` or `run.exe` to start the program
* If it does not work right away for you, there is two things you have to check:
  * Go to your default compiler path or `C_Cpp.default.compilerpath` and make the path is set to `C:/MinGW/bin/g++.exe` or wherever your MinGW is located
  * Go to your default include path or `C_Cpp.default.includepath` and make sure the path is set to `["${workspaceFolder}**/"]`
  * Run `make` and `run` again and the program should execute

## Authors

Zachary Chi
zachchi@tamu.edu

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
