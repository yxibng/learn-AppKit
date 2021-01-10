//
//  TransientContentController.swift
//  NSPopover-Demo
//
//  Created by yxibng on 2021/1/10.
//

import Cocoa

class TransientContentController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func onClickOK(_ sender: Any) {
        print("\(self.className) \(#function)")
    }
    
    @IBAction func onClickClose(_ sender: Any) {
        print("\(self.className) \(#function)")
    }
    
}
