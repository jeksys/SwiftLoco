//
//  LocoBase.swift
//  SwiftLoco
//
//  Created by Eugene Yagrushkin on 2017-04-13.
//  Copyright © 2017 LocoEye. All rights reserved.
//

import Foundation

extension String {

    public var localized: String {
        return localized()
    }
    
    // NSLocalizedString shorthand
    fileprivate func localized(comment: String = "")->String{
        return NSLocalizedString(self, comment: "")
    }
    
}
