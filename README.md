# RemoveWord
Scripts to remove parts of file names of file in the folder the script is run from.
* `RemoveWord.bat`: Script to remove specific word from files in folder.
* `RemoveSequence.bat`: script that removes characters from all file names in the folder the script is located between 49th to 64th position.
  * Created for removing strings like `[99EDF101]` & `[CFA342A9]`from file name. Equal length, different characters.

## Instructions `RemoveWord.bat`
* Place `RemoveWord.bat` in the folder with files to have word to be removed.
* Make sure there are no files that you don't want to edit in folder in case they contain the word you want to remove.
* Run `RemoveWord.bat`

## Instructions `RemoveSequence.bat`
* Note that it's easier to mess up with this script, be extra careful
* Place `RemoveSequence.bat` in the folder with files to have character sequence be removed.
* Make sure there are no files that you don't want to edit in folder.
  * This script will try to edit all files except for `.bat` files in the folder.
* Open `RemoveSequence.bat` in an editor like Notepad++.
  * Make sure that line 12 is commented (starts with `REM`), otherwise it will rename files when you run it.
  * Change 49 & 64 to change the character sequence/range to remove. It removes characters at the 49th to 64th position if left unchanged.
* Run the script to see how the file names will change.
  * Edit the positions if you got them wrong & try again.
* Edit the script, removing `REM` from line 12 once the script displays the file names as you want to rename them to.
* Run the scrip again, now it should rename the files.
* Delete script or add back `REM` at beginning of line 12