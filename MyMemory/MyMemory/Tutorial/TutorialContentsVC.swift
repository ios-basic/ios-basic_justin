//
//  TutorialContentsVC.swift
//  MyMemory
//
//  Created by justin dongwook Jung on 2021/05/10.
//

import UIKit

class TutorialContentsVC: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bgImageView: UIImageView!
    
    var pageIndex: Int!
    var titleText: String!
    var imageFile: String!
    
    override func viewDidLoad() {
        self.bgImageView.contentMode = .scaleAspectFill
        
        self.titleLabel.text = self.titleText
        self.titleLabel.sizeToFit()
        
        self.bgImageView.image = UIImage(named: self.imageFile)
    }
    
}
