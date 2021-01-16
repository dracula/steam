### [Steam](https://store.steampowered.com)

### There is a "basic" and a "extended" version of this theme.
To install the extended version first install the basic version and proceed then with the extended version.

### Basic installation
#### Linux

If you use the best OS available, the installation can be very easy. Please check beforehand, if the mentioned Steam folder is existing (it should be on every distribution, but you can never be sure).
Use the terminal, Luke:

1. `cd ~/.local/share/Steam/skins/ && git clone https://github.com/dracula/steam.git 'Dracula'`
2. open Steam and go to `Steam -> Settings -> Preferences` and open the section `Interface`
3. select the skin `Dracula` and restart Steam, done!

#### Windows

1. download or clone this [repository](https://github.com/dracula/steam)
2. extract (if downloaded compressed)
3. move the extracted folder into your Steam skin folder (which is in the Steam base folder)  
   default location: `C:\Program Files\Steam\Skins`
4. open Steam and go to `Steam -> Settings -> Preferences` and open the section `Interface`
5. select the skin `Dracula` and restart Steam, done!

#### Mac

1. download or clone the [repository](https://github.com/dracula/steam)
2. extract (if downloaded compressed)
3. open `Finder` and press `CMD + Shift + G`
4. type in `~/Library/Application Support/Steam/Steam.AppBundle/Steam/Contents/MacOS/skins`
4. move the extracted folder into this folder
5. open Steam and go to `Steam -> Settings -> Preferences` and open the section `Interface`
6. select the skin `Dracula` or and restart Steam, done!

### Extended Installation
Steam decided to make it harder to customize the library with new layout introduced in late 2019.  
To customize the library now, you have to alter a specific .css file that's get changed back after every restart.
We can prevent this by starting steam with the start option `-noverifyfiles` enabled.
After a steam update you have to redo the following install instructions.

#### Linux 
1. execute `install.sh` to move the custom css files into the right folder
2. if you start Steam per autostart, check how to alter the autostart instructions in your distro and add the start option `-noverifyfiles`

### Other OS & Manual installation
1. rename `5.css` in `Steam/steamui/css` to `steam5.css`
2. move both .css files (`custom.css` & `5.css`) from the skin folder into the css folder of steam 
3. if you start Steam per autostart, check how to alter the autostart instructions in your OS and add the start option `-noverifyfiles`

