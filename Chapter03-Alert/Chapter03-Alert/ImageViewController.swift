//
//  ImageViewController.swift
//  Chapter03-Alert
//
//  Created by justin dongwook Jung on 2021/05/02.
//

import UIKit

class ImageViewController: UIViewController {
    
    override func viewDidLoad() {
        let icon = UIImage(named: "rating5")
        let iconV = UIImageView(image: icon)
        
        iconV.frame = CGRect(x: 0, y: 0, width: (icon?.size.width)!, height: (icon?.size.height)!)
        
        self.view.addSubview(iconV)
        self.preferredContentSize = CGSize(width: (icon?.size.width)!, height: (icon?.size.height)!+10)
        
        
    }
}
