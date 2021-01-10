//
//  ViewController.swift
//  NSPopover-Demo
//
//  Created by yxibng on 2021/1/10.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func showApplicationDefinedPopover(_ sender: NSButton) {
        //need close by app
        
        let popover = NSPopover.init()
        
        popover.contentSize = CGSize.init(width: 375, height: 300)
        popover.behavior = .applicationDefined
        popover.animates = true
        
        let viewController = AppDefinedContentController.init()
        viewController.popover = popover

        popover.contentViewController = viewController
        
        let rect = sender.convert(sender.bounds, to: NSApp.mainWindow?.contentView)
        popover.show(relativeTo: rect, of: NSApp.mainWindow?.contentView ?? self.view, preferredEdge: .maxY)
        
    }
    
    @IBAction func displayTransientPopover(_ sender: NSButton) {
        // will automatically close when click contents out fo popover
     
        let popover = NSPopover.init()
        
        popover.contentSize = CGSize.init(width: 375, height: 300)
        popover.behavior = .transient
        popover.animates = true
        
        let viewController = TransientContentController.init()
        popover.contentViewController = viewController
        
        let rect = sender.convert(sender.bounds, to: NSApp.mainWindow?.contentView)
        popover.show(relativeTo: rect, of: NSApp.mainWindow?.contentView ?? self.view, preferredEdge: .maxY)
    }
}

