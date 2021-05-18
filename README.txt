Rocketfire Renegade - A rocket-jumping 2D platformer!

Developers: James McPeak, Patrick Preston, Haitham Taloui, and Chris Abdo
-------------------------------------------------------------------------

How to play: Download Rocketfire_Renegade.zip from the root repository folder, extract the contents to an empty directory, and launch Rocketfire_Renegade.exe

Codebase deployment instructions:

1. Download and obtain a license for GameMaker Studio 2 (https://www.yoyogames.com/get). NOTE: Either a free trial or paid license is sufficient for development purposes, but a paid license is required for compiling the project as a standalone executable.

2. Clone this repository into a desired location.

3. Open GameMaker Studio 2, select File -> Open Project, navigate to the directory where you cloned this repository, and select "Rocketfire Renegade.yyp".

4. The project is now open; continue development as your heart desires! (see "Codebase modification instructions").

Codebase modification instructions:

Virtually all code in GameMaker Studio 2 is handled by discrete event-based scripts attached to objects. To access these scripts, navigate to the Objects menu under the Resources tab in GameMaker and double-click an object from the hierarchy. Under the resulting "Events" panel that opens within the GameMaker Workspace tab, double click the desired event (i.e. "Create", which is executed upon an object's instantiation in the game, or "Step", which fires once per game frame for that object) to open the script for that event, or click "Add Event" to create a new script. Alternatively, scripts can be accessed outside of the GameMaker IDE by navigating to the "objects" folder in the project directory, opening the folder for the desired object, and opening its event scripts (.gml files) in an editor of your choice.

Documentation for GameMaker Studio 2 and its associated language GML can be found at https://docs2.yoyogames.com/

Debugging instructions:

The GameMaker IDE comes with a built-in debugger much like that of Visual Studio's. To debug, press the "Debug" icon in the top left command bar (right next to the standard "Run" icon), and a new debugging tab will open along with the game, enabling you to start/pause the game loop at will and select breakpoints. To stop debugging, press the "Stop" icon in the same top left command bar.

Compiling into standalone executable (NOTE: Paid GameMaker license required):

Select "Create Executable" in GameMaker's top left command bar, and follow the pursuant dialogue to export the game as a standalone installer or zip archive.

-------------------------------------------------------------------------------------------------------------------------------------------------------------
Read the System Manual and User's Guide on the Rocketfire Renegade GitLab page for further information!