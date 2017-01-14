# AIR_22_Performance_Bug
Bug with GameInput Class on Windows 7

This repo was built to demonstrate a performance issue with the `GameInput` class on Windows 7 machines. Simply instantiating `GameInput` has a massive performance hit on the SWFs animation playback rate. Running the app just displays a simple vector flames animation that should run a solid 30 FPS. But you'll see the bug causes it to drop to 20FPS.

- Appears to affect both AIR 22+ and Flash Player 22+
- Does not affect AIR or Flash Player below version 22
- Seems to only affects Windows 7
- Causes ~33% drop in frame rate playback


I've built two AIR installs and two SWFs reproducing the issue. The source code has also been provided so you can rebuild yourself. See `src/Main.as` for the offending code.

Bug Thread:

https://forums.adobe.com/message/9259600#9259600