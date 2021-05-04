//
//  CSStepper.swift
//  Chapter03-CSStepper
//
//  Created by kp_justin on 2021/05/04.
//

import UIKit

@IBDesignable
class CSStepper: UIView {
    
    public var leftBtn = UIButton(type: .system)
    public var rightBtn = UIButton(type: .system)
    public var centerLabel = UILabel()
    
    //스테퍼의 현재값을 저장할 변수
    public var value: Int = 0 {
        didSet {
            self.centerLabel.text = String(value)
        }
    }
    
    let borderWidth: CGFloat = 0.5
    let bordColor = UIColor.blue.cgColor
    
    // 스토리보드에서 호출할 초기화 메소드
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
        
    }
    
    // 프로그래밍 방식으로 호출할 초기화 메소드
    public override init(frame: CGRect){
        super.init(frame: frame)
        self.setup()
    }
    
    private func setup(){
        self.leftBtn.tag = -1
        self.leftBtn.setTitle("⬇︎", for: .normal)
        self.leftBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        self.leftBtn.layer.borderWidth = borderWidth
        self.leftBtn.layer.borderColor = bordColor
        
        self.rightBtn.tag = 1
        self.rightBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.rightBtn.setTitle("⬆︎", for: .normal)
        
        self.rightBtn.layer.borderWidth = borderWidth
        self.rightBtn.layer.borderColor = bordColor
        
        self.centerLabel.text = String(value)
        self.centerLabel.font = UIFont.systemFont(ofSize: 16)
        self.centerLabel.textAlignment = .center
        self.centerLabel.backgroundColor = .cyan
        self.centerLabel.layer.borderWidth = borderWidth
        self.centerLabel.layer.borderColor = bordColor
        
        self.leftBtn.addTarget(self, action: #selector(valueChange(_:)), for: .touchUpInside)
        self.rightBtn.addTarget(self, action: #selector(valueChange(_:)), for: .touchUpInside)
        
        self.addSubview(self.leftBtn)
        self.addSubview(self.centerLabel)
        self.addSubview(self.rightBtn)

    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        let btnWidth = self.frame.height
        let lblWidth = self.frame.width - (btnWidth*2)
        
        self.leftBtn.frame = CGRect(x: 0, y: 0, width: btnWidth, height: btnWidth)
        self.centerLabel.frame = CGRect(x: btnWidth, y: 0, width: lblWidth, height: btnWidth)
        self.rightBtn.frame = CGRect(x: btnWidth+lblWidth, y: 0, width: btnWidth, height: btnWidth)
    }
    
    @objc public func valueChange(_ sender: UIButton){
        self.value += sender.tag
    }
}
