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
    @IBOutlet weak var tage: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var textfeld2: MeinTextFeld!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        calcButton.setTitle("Berechnen", for: .normal)
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcButton.addTarget(self, action: #selector(WindowShopperMainVC.berechnen), for: .touchUpInside)
        
        textfeld.inputAccessoryView = calcButton
        textfeld2.inputAccessoryView = calcButton
        
        tage.isHidden = true
        label2.isHidden = true
    }
    @IBAction func clear(_ sender: Any) {
        
        textfeld2.text = ""
        textfeld.text = ""
        tage.isHidden = true
        label2.isHidden = true
        
    }
    
    @objc func berechnen(){
        if let preis = Double(textfeld.text!), let gehalt = Double(textfeld2.text!){
            view.endEditing(true)
            tage.text = "\(Wage.calcwage(preis: preis, gehalt: gehalt))"
            tage.isHidden = false
            label2.isHidden = false
            
        }
        
    }


}

