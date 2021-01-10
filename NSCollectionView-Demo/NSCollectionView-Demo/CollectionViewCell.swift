//
//  CollectionViewCell.swift
//  NSCollectionView-Demo
//
//  Created by yxibng on 2021/1/10.
//

import Cocoa

class CollectionViewCell: NSCollectionViewItem {

    @IBOutlet weak var titleLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.wantsLayer = true
        self.view.layer?.backgroundColor = NSColor.gray.cgColor
        // Do view setup here.
    }
    
    @IBAction func onClickButton(_ sender: Any) {
        print("\(self.className) \(#function) \(self.titleLabel.stringValue)")
    }
}
