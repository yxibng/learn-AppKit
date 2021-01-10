//
//  BackgroundColorView.swift
//  NSView-Demo
//
//  Created by yxibng on 2021/1/10.
//

import Cocoa

/*
 参考 https://stackoverflow.com/questions/2962790/best-way-to-change-the-background-color-for-an-nsview
 */

class BackgroundColorView: NSView {

    @IBInspectable var backgroundColor: NSColor? {
        didSet { needsDisplay = true }
    }
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        wantsLayer = true
    }

    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        wantsLayer = true
    }

    override var wantsUpdateLayer: Bool { return true }

    override func updateLayer() {
        layer?.backgroundColor = backgroundColor?.cgColor
    }
    
    /*
     通过此属性让view 和 它的 子视图 不再 响应点击事件
     */
    var disableEvents = false
    
    /*
     如果是遮罩，点击事件会被拦截在当前视图和它的子视图上面，
     像 iOS的 view 一样

     如果不拦截，事件会被透传到下面的视图，按钮等
     */
    var isMaskView = false
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
    
    override func acceptsFirstMouse(for event: NSEvent?) -> Bool {
        if self.disableEvents {
            return false
        }
        return true
    }
    
    override func hitTest(_ point: NSPoint) -> NSView? {
        if self.disableEvents {
            return nil
        }
        return super.hitTest(point)
    }
    
    override func mouseDown(with event: NSEvent) {
        if self.isMaskView {
           return
        }
        super.moveDown(event)
    }
    
    override func rightMouseDown(with event: NSEvent) {
        if self.isMaskView {
           return
        }
        super.rightMouseDown(with: event)
    }
    
    
}
