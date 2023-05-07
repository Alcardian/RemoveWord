# RemoveWord
Windows batch script to remove parts of file names of file in the folder the script is run from.

## Modes
The difference modes of the main file `RemoveWord.bat`

### Word
* Remove specific word from files in folder.

### Sequence
* Remove character sequence from `startPos` to `endPos`.
* Created for removing strings like `[99EDF101]` & `[CFA342A9]`from file names. Equal length, different characters.

## Instructions
* Place `RemoveWord.bat` in the folder with files be renamed.
* Run the `.bat` file.
  * Note that it will let the user preview name changes to files before it starts to rename them. Less chance of messing up.
