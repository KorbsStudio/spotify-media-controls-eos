# spotify-media-controls-eos
<img width="500px" src="https://i.imgur.com/aNB6JPU.png">

It appears sometimes, that you can't control Spotify with your media controls on elementary OS, which gets annoying sometimes.
So I plan to write a script that updates your keyboard shortcuts, where you media controls can control Spotify no matter what.
Although your media controls will be locked in with Spotify only, unless you remove the custom keyboard shortcuts.

Until then, here are the controls:

**Pause/Play**

```
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
```
**Next Track**

```
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next
```
**Previous Track**

```
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
```
## Add Controls to Dock
You can add controls when you right click on Spotify from your dock.
Install it with this:

```
sudo bash <(wget -qO- https://raw.githubusercontent.com/KorbsStudio/spotify-media-controls-eos/main/src/script/install-dock-controls.sh)
```

Above command not working? Use this:
```
clear
echo "Creating a backup..."
sudo mkdir /usr/share/korbs-studio/
sudo cp /usr/share/applications/spotify.desktop /usr/share/korbs-studio/
echo "Installing..."
cd /usr/share/applications/
sudo rm spotify.desktop
sudo wget "https://raw.githubusercontent.com/KorbsStudio/spotify-media-controls-eos/main/src/desktop/spotify.desktop"
echo "Done."
sleep 1;
echo "Did an issue occur? Report it to https://github.com/KorbsStudio/spotify-media-controls-eos/issues"
sleep 1;
```

What this script does?
 - Creates a new folder to back up __spotify.desktop__ file to `/usr/share/korbs-studio/`
 - Copies __spotify.desktop__ to `/usr/share/korbs-studio`
 - Download and install new __spotify.desktop__ file to `/usr/share/applications/`

## Extra
Assumed keybinds:
Previous `XF86AudioPrev`
Next `XF86AudioNext`
