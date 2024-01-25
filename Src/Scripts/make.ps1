.\clean.ps1
D:\Dev\Gameboy\Tools\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -c -o main.o ./../main.c
D:\Dev\Gameboy\Tools\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -c -o CoreService.o ./../Services/CoreService.c
D:\Dev\Gameboy\Tools\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -c -o PerformanceService.o ./../Services/PerformanceService.c


D:\Dev\Gameboy\Tools\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -o all-in-jest.gb main.o CoreService.o PerformanceService.o
# Start-Process D:\Dev\Gameboy\Tools\bgb\bgb.exe .\main.gb