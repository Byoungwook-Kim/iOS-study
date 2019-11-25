//
//  CSStepper.swift
//  CSStepper
//
//  Created by Byoung_wook on 18/11/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit
public class CSStepper: UIView {
    
    public var leftBtn = UIButton(type: .system)
    public var rightBtn = UIButton(type: .system)
    public var centerLabel = UILabel()
    public var value:Int = 0
    
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    
    private func setup(){
        
        let boarderWidth:CGFloat = 0.5
        let boardColor = UIColor.blue.cgColor
        
        
        self.leftBtn.tag = -1
        self.leftBtn.setTitle("⬇︎", for: .normal)
        self.leftBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        self.leftBtn.layer.borderWidth = boarderWidth
        self.leftBtn.layer.borderColor = boardColor
        
        self.rightBtn.tag = -1
        self.rightBtn.setTitle("⬆︎", for: .normal)
        self.rightBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        self.leftBtn.layer.borderWidth = boarderWidth
        self.leftBtn.layer.borderColor = boardColor
        
        self.centerLabel.text = String(value)
        self.centerLabel.font = UIFont.systemFont(ofSize: 16)
        self.centerLabel.textAlignment = .center
        self.centerLabel.backgroundColor = UIColor.cyan
        self.centerLabel.layer.borderWidth = boarderWidth
        self.centerLabel.layer.borderColor = boardColor
        
        self.addSubview(self.leftBtn)
        self.addSubview(self.rightBtn)
        self.addSubview(self.centerLabel)
        
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        let btnWidth = self.frame.height
        let lblWidth = self.frame.width - (btnWidth * 2)
        
        self.leftBtn.frame = CGRect(x: 0, y: 0, width: btnWidth, height: btnWidth)
        self.centerLabel.frame = CGRect(x: btnWidth, y: 0, width: lblWidth, height: btnWidth)
        self.rightBtn.frame = CGRect(x: btnWidth+lblWidth, y: 0, width: btnWidth, height: btnWidth)
        
    }
}
