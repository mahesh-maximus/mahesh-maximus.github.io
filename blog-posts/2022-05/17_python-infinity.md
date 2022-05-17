# Pytho Infinity

## Problem
These days I'm working on a **Hobby** project called [Vulcan](https://github.com/mahesh-maximus/vulcan). And it requires Rust, JavaScript and Python. Since Vulcan uses [Firecracker](https://github.com/firecracker-microvm/firecracker) code as a git sub-module, I am having a dev container approach of Vulcan just like Firecracker. The complete build and running the app take place inside a dev container. So I wanted to behave Python interpreter just like Webpack development server which detects file changes and reload the web content. But I couldn’t find any tool or library for Python, that performs the same. ![image](https://user-images.githubusercontent.com/6337584/168842088-ec02d95e-1551-406f-a0c7-94ba8ddd74d8.png)


## Solution
So I developed my own.

```python
import watchdog.events
import watchdog.observers
import time
import subprocess
from threading import Thread, Lock

mutex = Lock()

class Vulcan:
    process = None
    processStarted = True

class Handler(watchdog.events.PatternMatchingEventHandler):
    def __init__(self):
        # Set the patterns for PatternMatchingEventHandler
        watchdog.events.PatternMatchingEventHandler.__init__(self, patterns=['*.py', '*.txt'], ignore_directories=True, case_sensitive=False)
        
    # def on_created(self, event):
    
    # def on_modified(self, event):
    
    def on_any_event(self, event):
        colorPrint('1','31', '44', "Watchdog received an file system event - % s." % event.src_path)
        Vulcan.process.kill()
        startVulcan()

def startVulcan():
    Thread(target=runPython3Interpreter).start()

def runPython3Interpreter():
    if mutex.locked():
        colorPrint('1','31', '44', "In progress of spawning a new Python3 interpreter instance ...")
        return None

    mutex.acquire()
    try:
        colorPrint('1','31', '44', "Starting Valcan python3 interpreter ...")
        Vulcan.process = subprocess.Popen(["python3", "/valcan/titus/main-loop.py"])
        Vulcan.process.wait()
        colorPrint('1','31', '44', "Stopped Valcan! python3 interpreter ...")
    finally:
        mutex.release()

# 
# https://stackoverflow.com/questions/287871/how-do-i-print-colored-text-to-the-terminal
#
def colorPrint(style, fg, bg, msg):
    print('\x1b[{};{};{}m'.format(style, fg, bg) + msg + '\x1b[0m') 

def main():
    startVulcan()
    src_path = "/valcan/titus"
    event_handler = Handler()
    observer = watchdog.observers.Observer()
    observer.schedule(event_handler, path=src_path, recursive=True)
    observer.start()
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()
```

