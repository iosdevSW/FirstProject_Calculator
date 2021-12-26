//
//  CustomButton.swift
//  Calculator
//
//  Created by 신상우 on 2020/08/16.
//  Copyright © 2020 SangWoo Shin. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    override var isHighlighted: Bool {
           didSet{
               self.backgroundColor = isHighlighted ? .systemGray4 : .systemGray
            
        }
    }
}
