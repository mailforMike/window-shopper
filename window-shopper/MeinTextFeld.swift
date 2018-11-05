//
//  MeinTextFeld.swift
//  window-shopper
//
//  Created by Michael Holzinger on 05.11.18.
//  Copyright © 2018 Michael Holzinger. All rights reserved.
//

import UIKit

@IBDesignable

class MeinTextFeld: UITextField {

    override func prepareForInterfaceBuilder() {
        styling()
    }
    
    override func awakeFromNib() {
        super .awakeFromNib()
        
        styling()
        
    }
    
    func styling(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        keyboardType = .numberPad
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        layer.cornerRadius = 5
        
        //zweiter bracnh mit rollback

    }

    
    
    
}
