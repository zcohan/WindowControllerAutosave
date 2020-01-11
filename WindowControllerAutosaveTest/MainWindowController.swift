//
//  MainWindowController.swift
//  WindowControllerAutosaveTest

import Cocoa

class MainWindowController: NSWindowController {

    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        /* Turns out setting the autosave name properties for split views and windows in Interface Builder does not work! They must be set in code AFTER the view is loaded (so in windowDidLoad, for example). Also ensure that window cascading is disabled (however it seems this is off by default in modern Xcode document templates */
        
//        https://stackoverflow.com/questions/2734888/how-can-i-easily-save-the-window-size-and-position-state-using-obj-c
//        https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/WinPanel/Tasks/SavingWindowPosition.html
//        https://forums.developer.apple.com/thread/23453
                
        self.setupAutoSave()

    }
    
    func setupAutoSave() {
        
        self.shouldCascadeWindows = false
        self.windowFrameAutosaveName = "MainWindow"
        
        let splitView = (self.contentViewController as! NSSplitViewController).splitView
        splitView.autosaveName = "MainSplitView"
        
    }
    

}
