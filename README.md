# Small Tools I've Made

This repo contains small things I've made and reuse.

## Set-Browser Applescript

An Applescript that:

1. Selects your default browser
2. Auto-clicks OK
3. If your browser supports multiple profiles/spaces/containers, switches to the one you want

### Running

Run it by `osascript set-browser.scpt Safari`

### Building

I recommend you use the [VS Code Applescript Extension](https://github.com/idleberg/vscode-applescript), which has a lot of nice features and will save you from having to remember the switches to `osascript`

### Browser Support

* Only supports Spaces in Arc so far
* Firefox containers coming
* No particular plans to do Chrome
* Safari doesn't currently offer an Applescript or shell API for its spaces
