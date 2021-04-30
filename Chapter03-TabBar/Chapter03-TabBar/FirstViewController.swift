//
//  FirstViewController.swift
//  Chapter03-TabBar
//
//  Created by justin dongwook Jung on 2021/04/30.
//

import UIKit
class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        title.text = "첫번째 탭"
        title.textColor = .red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        
        title.sizeToFit()
        
        title.center.x = self.view.frame.width/2
        
        self.view.addSubview(title)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let tabBar = self.tabBarController?.tabBar
//        tabBar?.isHidden = (tabBar?.isHidden == true) ? false : true
        
                
        UIView.animate(withDuration: TimeInterval(0.15)){
            tabBar?.alpha = ( tabBar?.alpha == 0 ? 1 : 0)
        }
    }
}
