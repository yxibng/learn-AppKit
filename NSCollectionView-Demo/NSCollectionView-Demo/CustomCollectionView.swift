//
//  CustomCollectionView.swift
//  NSCollectionView-Demo
//
//  Created by yxibng on 2021/1/10.
//

import Cocoa

class CustomCollectionView: NSCollectionView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    

    override func keyDown(with event: NSEvent) {
         /*
         do nothing to ignore key envent(left ,right, up, down)
         禁用键盘事件来控制collection view 的选中
         */
        print("\(self.className) \(#function) \(event)")
    }
    
    
    
}
