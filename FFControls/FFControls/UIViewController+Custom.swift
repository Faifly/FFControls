//
//  UIViewController+Custom.swift
//  FFControls
//
//  Created by Artem Kalmykov on 9/28/16.
//  Copyright © 2016 Faifly. All rights reserved.
//

import Foundation

private var hidesKeyboardOnTapAssociationKey: UInt8 = 0

extension UIViewController
{
    open var hidesKeyboardOnTap: Bool
    {
        get
        {
            return objc_getAssociatedObject(self, &hidesKeyboardOnTapAssociationKey) as? Bool ?? false
        }
        set (newValue)
        {
            objc_setAssociatedObject(self, &hidesKeyboardOnTapAssociationKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        super.touchesEnded(touches, with: event)
        
        if self.hidesKeyboardOnTap
        {
            self.view.endEditing(true)
        }
    }
}
