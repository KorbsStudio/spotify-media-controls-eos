# spotify-media-controls-eos
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
You can add controls when right click on Spotify from your dock.
Install with this:

```
SCRIPT NOT AVAILABLE YET
```
