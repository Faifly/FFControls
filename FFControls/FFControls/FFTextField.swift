//
//  FFTextField.swift
//  FFControls
//
//  Created by Artem Kalmykov on 9/28/16.
//  Copyright © 2016 Faifly. All rights reserved.
//

import UIKit

open class FFTextField: UITextField
{
    @IBInspectable open var topMargin: CGFloat = 0
    @IBInspectable open var leftMargin: CGFloat = 0
    @IBInspectable open var bottomMargin: CGFloat = 0
    @IBInspectable open var rightMargin: CGFloat = 0
    
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
