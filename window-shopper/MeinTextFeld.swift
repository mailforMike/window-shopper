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
    
    override func draw(_ rect: CGRect) {
        let size = CGFloat(35)
        let button = UILabel(frame: CGRect(x: 5, y: ((frame.size.height/2) - (size/2)), width: size, height: size))
        button.layer.cornerRadius = 5
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        button.text = "€"
        button.textAlignment = .center
        button.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.clipsToBounds = true
        addSubview(button)
    }

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
        
        clipsToBounds = true
        
        layer.cornerRadius = 5
        
      
    }

    
    
    
}
