//
//  MapAlertViewController.swift
//  Chapter03-Alert
//
//  Created by justin dongwook Jung on 2021/05/01.
//

import UIKit
import MapKit

class MapAlertViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alertBtn = UIButton(type: .system)

        alertBtn.frame = CGRect(x: 0, y: 150, width: 100, height: 30)
        alertBtn.center.x = self.view.frame.width/2
        alertBtn.setTitle("Map Alert", for: .normal)
        alertBtn.addTarget(self, action: #selector(mapAlert(_:)), for: .touchUpInside)
        
        self.view.addSubview(alertBtn)
    }
    
    @objc func mapAlert(_ sender: UIButton){
        let alert = UIAlertController(title: nil, message: "여기가 맞습니까?", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        let contentVC = MapKitViewController()
        
        alert.setValue(contentVC, forKeyPath: "contentViewController")
        
        self.present(alert, animated: false)
    }
}
