//
//  FrontViewController.swift
//  Chapter04-SideBarDIY
//
//  Created by justin dongwook Jung on 2021/05/05.
//

import UIKit

class FrontViewController: UIViewController {
    
    var delegate: ReavealViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        let btnSideBar = UIBarButtonItem(image: UIImage(named: "sidemenu.png"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(moveSide(_:)))
        
        self.navigationItem.leftBarButtonItem = btnSideBar
        
        let dragLeft = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(moveSide(_:)))
        
        dragLeft.edges = UIRectEdge.left
        self.view.addGestureRecognizer(dragLeft)
        
        let dragRight = UISwipeGestureRecognizer(target: self, action: #selector(moveSide(_:)))
        
        dragRight.direction = .left
        self.view.addGestureRecognizer(dragRight)
    }
    

    @objc func moveSide(_ sender: Any) {
        
        if sender is UIScreenEdgePanGestureRecognizer {
            self.delegate?.openSideBar(nil)
        } else if sender is UISwipeGestureRecognizer {
            self.delegate?.closeSideBar(nil)
        } else if self.delegate?.isSideBarShowing == false {
            self.delegate?.openSideBar(nil)
        } else {
            self.delegate?.closeSideBar(nil)
        }
    }

}
