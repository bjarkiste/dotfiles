#!/usr/bin/env python3
import sys, os, glob
vsPath = '/mnt/c/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Common7/IDE/devenv.exe' 

def startDaemon(s):
    pid = os.fork()
    if (pid == 0):
        pid = os.fork()
        if (pid == 0):
            os.system(s)
        else:
            os._exit(0)
    else:
        os._exit(0)

def startDir(arg, search):
    os.chdir(arg)
    solutions = glob.glob('*.sln')
    if (len(solutions) == 0):
        if (search and os.path.isdir('src')):
            startDir('src', False)
            return

        print('No solutions found :^)')
        os._exit(2)

    startDaemon(f'"{vsPath}" "{solutions[0]}"')



if (__name__ == '__main__'):
    if (len(sys.argv) == 1):
        startDaemon(f'"{vsPath}"')
    else:
        arg = sys.argv[1]
        if (not os.path.exists(arg)):
            print('Path not found :^)')
            os._exit(2)

        if (os.path.isfile(arg)):
            startDaemon(f'"{vsPath}" "{arg}"')
        else:
            startDir(arg, True)
