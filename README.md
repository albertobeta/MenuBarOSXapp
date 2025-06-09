# Menu Bar app template for Mac OSX
This is a fully-working Xcode project to create a generic menu bar app (aka agent) located at the top right corner of the screen in Mac OS X.

![enter image description here](https://user-images.githubusercontent.com/4199523/26890570-43363434-4bb2-11e7-9de6-7d06d2e8a5af.png)

The main components in this template are an *AppDelegate* and a *.xib* file containing the interface of the agent, which includes a contextual menu containing the "quit" option.

When compiled with Xcode, this project works out of the box. AppDelegate.swift contains a function called `update()` which can be fully customized to achieve the desired functionality of the agent (currently, it simply displays the time as a proof of concept). The function `update()` is triggered by the `applicationDidFinishLaunching()` method, where you can also specify the `timeInterval` in seconds between each call to the  function:

    Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(AppDelegate.update), userInfo: nil, repeats: true)

Feel free to use this template to create your own menu bar agent. For instance, I built a [simple app to bring back the battery time left in my macbook pro](https://www.producthunt.com/posts/tlob-time-left-on-battery) [now discontinued] since the latest update of Mac OS X removed that feature and I was missing it.

[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/albertobeta/MenuBarOSXapp)
