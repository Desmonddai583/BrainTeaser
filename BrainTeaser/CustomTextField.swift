//
//  CustomTextField.swift
//  BrainTeaser
//
//  Created by Desmond Dai on 1/4/2016.
//  Copyright © 2016年 Desmond Dai. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    @IBInspectable var inset: CGFloat = 0
    
    @IBInspectable var conerRadius: CGFloat = 5 {
        didSet {
            setupView()
        }
    }
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, inset, inset)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return textRectForBounds(bounds)
    }
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.conerRadius
    }
    
}
