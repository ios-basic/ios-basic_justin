//
//  ViewController.swift
//  Chapter03-CSStepper
//
//  Created by kp_justin on 2021/05/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let stepper = CSStepper()
        stepper.frame = CGRect(x: 30, y: 100, width: 130, height: 30)
        
        stepper.addTarget(self, action: #selector(logging(_:)), for: .valueChanged)
        self.view.addSubview(stepper)
    }
    
    @objc func logging(_ sender: CSStepper){
        NSLog("현재 스터퍼의 값은 \(sender.value)입니다")
    }


}

