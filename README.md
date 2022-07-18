# Script for automatically creating steam deck themes with desired wallpapers

****
## Prerequisites ##
1. working [Plugin Loader](https://www.example.com) with SDH-CssLoader plugin installed
2. images you want to use as backgounds for ```Home``` and ```Lockscreen```
****
## How to ##
1. download this repository
2. extract ```homebrew``` folder into ```/home/deck/```
3. go to ```/homebrew/background``` folder
4. Put here your images and
   1. image you want to use on ```locskscreen``` rename to ```lock``` without extension!
   2. image you want to use on ```Home``` rename to ```home``` without extension!
5. make the ```background.sh``` script executable (right click it -> properties -> Permissions -> check ```Is executable``` box -> Ok
6. run the script in terminal ```./background.sh```
7. you will be prompted to input the theme name, make sure theme with that name does not exist (spaces in names are not tested lol)
8. that's it, go back to ```Game mode``` and activate your new theme (make sure to reload them first)