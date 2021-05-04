//
//  FrontViewController.swift
//  Chapter04-SideBar
//
//  Created by justin dongwook Jung on 2021/05/04.
//

import UIKit

class FrontViewController: UIViewController {

    @IBOutlet weak var sideBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let revealVC = self.revealViewController(){
            self.sideBarButton.target = revealVC
            self.sideBarButton.action = #selector(revealVC.revealToggle(_:))
            
            self.view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }

    }

}
