//
//  ViewController.swift
//  window-shopper
//
//  Created by Michael Holzinger on 05.11.18.
//  Copyright © 2018 Michael Holzinger. All rights reserved.
//

import UIKit

class WindowShopperMainVC: UIViewController {

    @IBOutlet weak var textfeld: MeinTextFeld!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        calcButton.setTitle("Berechnen", for: .normal)
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcButton.addTarget(self, action: #selector(WindowShopperMainVC.berechnen), for: .touchUpInside)
        
        textfeld.inputAccessoryView = calcButton
    }

    @objc func berechnen(){
        print("button pressed !!!!")
    }


}

