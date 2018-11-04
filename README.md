# M3U8VideoFishing 
Prototype allow to fishing M3U8 playlist from website for VLC Player. It's contain small chrome extension and two bat file allow you to automatically drop m3u8 video to VLC for more comfortable watching. Tested on HDRezka.
Probably, this prototype can be used not only with VLC, just need change some 'hardlinks' to it.

## Installing prototype
### VLC protocol
Put the files from the bat directory in your VLC directory (usually `C:\Program Files (x86)\VideoLAN\VLC`), and then run `VLC Protocol Register.bat` as administrator (right-click the file and use _Run as administrator_).
Use `VLC Protocol Deregister.bat` for remove `vlc://` link binding. 

### Chrome extension
Visit `chrome://extensions` (via omnibox or menu -> Tools -> Extensions).
1. Enable Developer mode by ticking the checkbox in the upper-right corner.
2. Click on the _"Load unpacked extension..."_ button.
3. Select the directory containing your unpacked extension.

After installing, visit website with M3U8 video player and extension automatically detect direct link to playlist on video start.

This software prototype using open source solutions of some people:
- Idea of using protocol `vlc://` for VLC by stefansundin, and [realization](https://github.com/stefansundin/vlc-protocol) and modify it,
- Using admin rights check in bat files written by mythofechelon (with part written by blak3r). Thx [stack overflow](https://stackoverflow.com/questions/4051883/batch-script-how-to-check-for-admin-rights) :) 