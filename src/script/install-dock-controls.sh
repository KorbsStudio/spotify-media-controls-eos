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
