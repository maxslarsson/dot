# Source Executables

All scripts and executables that go in this directory will be added to a bin directory in the path. This will be completed by a script in the root of this repository. The process is described below.

## Creating the `bin` directory

#### Note: These steps will be done by a script in the future

1. Add the `bin` directory to path
2. Loop through all files in the `src` directory
3. If the file is cross-platform and non-compilable (e.g. a bash or python script)
   1. Make sure the file has the right shebang (e.g. `#!/bin/bash`)
   2. Copy the file to the `bin` directory
   3. Remove the extension (e.g. test.py become test)
4. If the file is **not** cross-platform or requires compilation (e.g. a rust crate)
   1. Determine what is required to compile it and then execute that (e.g. cargo build --release for a rust crate)
   2. Copy the compiled executable to the `bin` directory
5. Whenever something is changed, rebuild the executable(s)
