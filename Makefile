SOURCE="https://files.kde.org/kdenlive/release/kdenlive-20.08.1-x86_64.appimage"
OUTPUT="KDEnlive.AppImage"

all:
	echo "Building: $(OUTPUT)"
	rm -f ./$(OUTPUT)
	#wget --output-document=$(OUTPUT) --continue $(SOURCE)
	export ARCH=x86_64 && bin/appimagetool.AppImage AppDir $(OUTPUT)
	chmod +x $(OUTPUT)

