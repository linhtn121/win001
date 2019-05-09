#-DQTKEYCHAIN_LIBRARY=C:\Users\fpt\Documents\qtkeychain-0.9.1\qtkeychain-0.9.1\ok\Release\qt5keychain.lib
#-DQTKEYCHAIN_INCLUDE_DIR=C:\Users\fpt\Documents\qtkeychain-0.9.1\qtkeychain-0.9.1


#step 1:
#Clone the desktop client code

git clone --recursive https://github.com/nextcloud/desktop.git
cd desktop
git checkout v2.5.2
git submodule update --recursive

#step 2:
mkdir build
cd build/

cmake "-GVisual Studio 15 2017 Win64" .. -DQTKEYCHAIN_LIBRARY=C:\Users\fpt\Downloads\qtkeychain-0.9.1\qtkeychain-0.9.1\ok\Release\qt5keychain.lib -DQTKEYCHAIN_INCLUDE_DIR=C:\Users\fpt\Downloads\qtkeychain-0.9.1\qtkeychain-0.9.1\ok -DZLIB_LIBRARY=C:\Users\fpt\Desktop\linh\zlib64\lib\zlib.lib  -DZLIB_INCLUDE_DIR=C:\Users\fpt\Desktop\linh\zlib64\include -DQt5_DIR=C:\Qt5.11.1\5.11.1\msvc2017_64\lib\cmake\Qt5  -DCMAKE_MODULE_PATH=C:\\Qt5.11.1\\5.11.1\\msvc2017_64\\lib\\cmake  -DNO_SHIBBOLETH=1 -DCMAKE_BUILD_TYPE=Release

cmake --build . --config Release --target install

#lconvert client_bg2.ts -o ok2.qm

windeployqt --release "C:\Program Files\client\bin\nextcloud.exe" --dir C:\yes\

#cmake "-GVisual Studio 15 2017 Win64" .. -DQTKEYCHAIN_LIBRARY=C:\Users\fpt\Downloads\qtkeychain-0.9.1\qtkeychain-0.9.1\ok\Release\qt5keychain.lib -DQTKEYCHAIN_INCLUDE_DIR=C:\Users\fpt\Downloads\qtkeychain-0.9.1\qtkeychain-0.9.1\ok -DZLIB_LIBRARY=C:\Users\fpt\Desktop\linh\zlib64\lib\zlib.lib  -DZLIB_INCLUDE_DIR=C:\Users\fpt\Desktop\linh\zlib64\include -DQt5_DIR=C:\Qt5.11.1\5.11.1\msvc2017_64\lib\cmake\Qt5  -DCMAKE_MODULE_PATH=C:\\Qt5.11.1\\5.11.1\\msvc2017_64\\lib\\cmake  -DNO_SHIBBOLETH=1 -DCMAKE_BUILD_TYPE=Release
