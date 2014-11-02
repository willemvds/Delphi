//
//  AppDelegate.swift
//  Delphi
//
//  Created by Willem van der Schyff on 2014/10/31.
//  Copyright (c) 2014 Willem van der Schyff. All rights reserved.
//

import Cocoa
import Foundation

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet weak var window: NSWindow!

    @IBOutlet var bottomTextView: NSTextView!

    @IBOutlet weak var leftTableView: NSTableView!
    @IBOutlet weak var rightTableView: NSTableView!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        var fileManager :NSFileManager = NSFileManager.defaultManager();
        fileManager.changeCurrentDirectoryPath("/");
        var error :NSError?
        var path :String = "/Users/willemvds/Documents/"
        var paths = fileManager.subpathsOfDirectoryAtPath(path, error: &error) as [NSString]
        for path in paths {
            println(path)
            let attrString1 = NSAttributedString(string:path+"\n")
            //leftTableView.insertText(path)
            bottomTextView.textStorage?.appendAttributedString(attrString1)
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

