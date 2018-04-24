Dafny 

Dafny is an object-oriented programming language with a program verifier. As the program is typed, the verifier is constantly checking and flagging any errors (Leino, 2018). 

Running the code online

To run the code online, simply go to: https://rise4fun.com/dafny and replace the existing code with the code you would like to run. Click the play button towards the bottom when ready to execute the code. The output will display directly under that. 

Running the code online is probably the most efficient way to check the code, as it does not require any installations or any sort of set up. The way to utilize the online IDE is uniform across all platforms

Running the Code Locally (Windows)

	Download Dafny. 
Follow the instructions at: https://github.com/Microsoft/dafny/wiki/INSTALL 


Running the Code Locally (Mac/Linux) 

	Start off by downloading mono. 
Follow the instruction at: http://www.mono-project.com/docs/getting-started/install/mac/ 
Set up mono. This will allow the code to compile, but won’t execute it. 
Follow the instructions at: https://www.cs.cmu.edu/~mfredrik/15414/hw/guide.pdf. 

	To be able to execute code, use wine:  
Follow the instructions at: https://www.davidbaumgold.com/tutorials/wine-mac/#part-3:-install-wine-using-homebrew.

 
Alloy 

Alloy is a language for describing structures and a tool for exploring them. An Alloy model is a collection of constraints that describe a set of structures. The Alloy Analyzer takes the constraints of a model and finds structures that satisfy them. It can be used to check properties of the model (Jackson, 2012).

Downloading Alloy

Download alloy from their website
Choose the latest stable release: http://alloytools.org/download.html
	
*NOTE Java 9 causes issues with Alloy. I had to revert to Java 8 on my machine to be able to use the compiler. 

Running the Code 

	Double click on the .jar file (mine was called alloy4.jar) to open the compiler. Paste the code into the text area and hit the execute button in the top left:
