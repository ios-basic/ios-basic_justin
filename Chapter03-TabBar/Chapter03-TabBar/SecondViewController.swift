//
//  SecondViewController.swift
//  Chapter03-TabBar
//
//  Created by justin dongwook Jung on 2021/04/30.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        title.text = "두번째 탭"
        title.textColor = .red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        
        title.sizeToFit()
        
        title.center.x = self.view.frame.width/2
        
        self.view.addSubview(title)
        
        self.tabBarItem.image = UIImage(named: "file-tree.png")
        self.tabBarItem.title = "file"
    }
}
