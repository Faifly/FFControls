//
//  FFTextField.swift
//  FFControls
//
//  Created by Artem Kalmykov on 9/28/16.
//  Copyright © 2016 Faifly. All rights reserved.
//

import UIKit

class FFTextField: UITextField
{
    @IBInspectable fileprivate var topMargin: CGFloat = 0
    @IBInspectable fileprivate var leftMargin: CGFloat = 0
    @IBInspectable fileprivate var bottomMargin: CGFloat = 0
    @IBInspectable fileprivate var rightMargin: CGFloat = 0
    
    fileprivate var padding: UIEdgeInsets
    {
        return UIEdgeInsets(top: self.topMargin, left: self.leftMargin, bottom: self.bottomMargin, right: self.rightMargin)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect
    {
        return UIEdgeInsetsInsetRect(bounds, self.padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect
    {
        return UIEdgeInsetsInsetRect(bounds, self.padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect
    {
        return UIEdgeInsetsInsetRect(bounds, self.padding)
    }
}
