//
//  ViewController.swift
//  NSCollectionView-Demo
//
//  Created by yxibng on 2021/1/10.
//

import Cocoa




class ViewController: NSViewController {

    let cellIdentifier = "CollectionViewCell"
    
    @IBOutlet weak var collectionView: NSCollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            /*
             cell使用xib的时候，需要在顶层的nib 文件中
             拖一个NSCollectionViewItem的对象做关联
             */
            let nib = NSNib.init(nibNamed: cellIdentifier, bundle: nil)
            collectionView.register(nib, forItemWithIdentifier: .init(cellIdentifier))
            
            let layout = NSCollectionViewFlowLayout.init()
            layout.itemSize = CGSize.init(width: 100, height: 100)
            layout.minimumLineSpacing = 1
            layout.minimumInteritemSpacing = 1
            
            collectionView.collectionViewLayout = layout
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}


extension ViewController: NSCollectionViewDelegate, NSCollectionViewDataSource {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let cell = collectionView.makeItem(withIdentifier: .init(cellIdentifier), for: indexPath) as! CollectionViewCell
        cell.titleLabel.stringValue = "\(indexPath.item)"
        return cell
    }
    
    func collectionView(_ collectionView: NSCollectionView, didSelectItemsAt indexPaths: Set<IndexPath>) {
        print("\(#function) \(indexPaths.first?.item ?? 0)")
        /*
         可以通过键盘的上下左右来控制选中，
         重写 NSCollectionView 的 keydown 方法可以阻止用户通过键盘来操控选中
         */
    }
    
}


