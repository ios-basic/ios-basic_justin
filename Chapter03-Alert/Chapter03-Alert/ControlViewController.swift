//
//  ControlViewController.swift
//  Chapter03-Alert
//
//  Created by justin dongwook Jung on 2021/05/02.
//

import UIKit

class ControlViewController: UIViewController {
    
    let slider = UISlider()
    var sliderValue: Float {
        return self.slider.value
    }
    
    override func viewDidLoad() {
        self.slider.minimumValue = 0
        self.slider.maximumValue = 100
        
        self.slider.frame = CGRect(x: 0, y: 0, width: 170, height: 30)
        self.view.addSubview(self.slider)
        
        self.preferredContentSize = CGSize(width: self.slider.frame.width, height: self.slider.frame.height+10)
    }
}
