//
//  model.swift
//  window-shopper
//
//  Created by Michael Holzinger on 08.11.18.
//  Copyright © 2018 Michael Holzinger. All rights reserved.
//

import Foundation

class Wage {
    
    class func calcwage(preis a: Double, gehalt  b: Double) -> Int {
        return Int(ceil(a / b))
    }
    
}
