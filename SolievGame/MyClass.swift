//
//  MyClass.swift
//  SolievGame
//
//  Created by user on 07.10.2021.
//

import UIKit

class MyClass: UIButton {

    convenience init(type: UIButton.ButtonType) {
        self.init(type: type)
        clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        clipsToBounds = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
    }
    
    override var clipsToBounds: Bool {
        didSet {
            layer.cornerRadius = 10
        }
    }
}
