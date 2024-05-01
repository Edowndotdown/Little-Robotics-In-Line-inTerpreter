mkdir update
rmdir /s /q update
mkdir update
cd update
bitsadmin.exe /transfer "LRILT" https://github.com/Edowndotdown/Nag/archive/refs/heads/main.zip "%cd%\Upd.zip"
tar -xf upd.zip
del upd.zip
exit