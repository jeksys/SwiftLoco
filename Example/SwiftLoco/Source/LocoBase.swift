//
//  Created by Eugene Yagrushkin on 2017-04-13
//

import Foundation

extension String {
    // NSLocalizedString shorthand

    public var localized: String {
        return localized()
    }
    
    fileprivate func localized(comment: String = "")->String{
        return NSLocalizedString(self, comment: "")
    }
    
}
