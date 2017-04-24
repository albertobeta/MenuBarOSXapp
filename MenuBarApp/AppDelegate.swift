//
//  AppDelegate.swift
//  MenuBarApp
//
//  Created by Alberto Betella on 24/04/2017.
//  Copyright © 2017 Alberto Betella. All rights reserved.
//

import Cocoa


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var statusMenu: NSMenu!
    // Replace NSVariableStatusItemLength with an integer for a fixed width (in pixels)
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
    NSApplication.shared().terminate(self)
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(AppDelegate.update), userInfo: nil, repeats: true)
        //Show statusMenu
        statusItem.menu = statusMenu

    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func update() {
        // Format the date
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "h:mm:ss"
        
        // Convert date into a string
        let now = dateformatter.string(from: NSDate() as Date)
        
        // Replace the title of the item in the status bar
        statusItem.title = "⏳"+now
    }

}

