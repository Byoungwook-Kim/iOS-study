//
//  CSButton.swift
//  CSButton
//
//  Created by Byoung_wook on 16/11/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class CSButton: UIButton {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.backgroundColor = UIColor.green
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.setTitle("버튼", for: .normal)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.gray
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.setTitle("코드로 생성된 버튼", for: .normal)
    }
    
    init() {
        super.init(frame: CGRect.zero)
    }
}
