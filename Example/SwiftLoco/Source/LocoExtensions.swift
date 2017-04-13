//
//  LocoExtensions.swift
//  SwiftLoco
//
//  Created by Eugene Yagrushkin on 2017-04-13.
//  Copyright © 2017 LocoEye. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    @IBInspectable public var locoText : String? {
        set {
            if newValue != nil {
                self.text = newValue?.localized
            }
            else {
                self.text = nil
            }
        }
        get {
            return self.text
        }
    }
}

extension UITextField {
    
    @IBInspectable public var locoText : String? {
        set {
            if newValue != nil {
                self.text = newValue?.localized
            }
            else {
                self.text = nil
            }
        }
        get {
            return self.text
        }
    }
    
    @IBInspectable public var locoPlaceholder : String? {
        set {
            if newValue != nil {
                self.placeholder = newValue?.localized
            }
            else {
                self.placeholder = nil
            }
        }
        get {
            return self.placeholder
        }
    }
}

extension UIButton {
    
    @IBInspectable public var locoTitle : String? {
        set { setLocalizedTitle(newValue, state: UIControlState()) }
        get { return getTitleForState(UIControlState()) }
    }
    
    @IBInspectable public var locoTitleHighlighted : String? {
        set { setLocalizedTitle(newValue, state: UIControlState.highlighted) }
        get { return getTitleForState(UIControlState.highlighted) }
    }
    
    @IBInspectable public var locoTitleDisabled : String? {
        set { setLocalizedTitle(newValue, state: UIControlState.disabled) }
        get { return getTitleForState(UIControlState.disabled) }
    }
    
    @IBInspectable public var locoTitleSelected : String? {
        set { setLocalizedTitle(newValue, state: UIControlState.selected) }
        get { return getTitleForState(UIControlState.selected) }
    }
    
    @IBInspectable public var locoTitleFocused : String? {
        set { setLocalizedTitle(newValue, state: UIControlState.focused) }
        get { return getTitleForState(UIControlState.focused) }
    }
    
    @IBInspectable public var locoTitleApplication : String? {
        set { setLocalizedTitle(newValue, state: UIControlState.application) }
        get { return getTitleForState(UIControlState.application) }
    }
    
    @IBInspectable public var locoTitleReserved : String? {
        set { setLocalizedTitle(newValue, state: UIControlState.reserved) }
        get { return getTitleForState(UIControlState.reserved) }
    }
    
    fileprivate func setLocalizedTitle(_ title:String?, state: UIControlState) {
        if title != nil {
            self.setTitle(title!.localized, for: state)
        }
        else {
            self.setTitle(nil, for: state)
        }
    }
    
    fileprivate func getTitleForState(_ state: UIControlState) -> String?{
        if let title = self.titleLabel {
            return title.text
        }
        return nil
    }
}

