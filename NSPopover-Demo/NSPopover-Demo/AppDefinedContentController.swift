//
//  AppDefinedContentController.swift
//  NSPopover-Demo
//
//  Created by yxibng on 2021/1/10.
//

import Cocoa

class AppDefinedContentController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    weak var popover: NSPopover?
    
    @IBAction func onClickOk(_ sender: Any) {
        print("\(self.className) \(#function)")

    }
    
    
    @IBAction func onClickClose(_ sender: Any) {
        print("\(self.className) \(#function)")
        self.popover?.performClose(sender)
    }
    
}
