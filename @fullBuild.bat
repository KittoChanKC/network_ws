@REM #change current directory to this file
%~d0
cd %~dp0

mkdir externals\vcpkg
git clone https://github.com/microsoft/vcpkg.git -b 2020.11 externals\vcpkg

call externals\vcpkg\bootstrap-vcpkg.bat

externals\vcpkg\vcpkg install fmt:x64-windows --recurse

externals\vcpkg\vcpkg install imgui[sdl2-binding]:x64-windows --recurse
externals\vcpkg\vcpkg install imgui[opengl3-glew-binding]:x64-windows --recurse

@pause