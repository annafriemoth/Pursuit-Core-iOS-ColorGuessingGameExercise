//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Anna Friemoth on 10/29/19.
//  Copyright © 2019 Anna Friemoth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var randomColorBox: UIView!
    let myColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //test
    }


    // let randNum = CGFloat.random(in: 0...1)
   
    
    @IBAction func red(_ sender: UIButton) {
        if sender.isTouchInside {
            randomColorBox.backgroundColor = myColor
        }
    }
    
    @IBAction func green(_ sender: UIButton) {
        if sender.isTouchInside {
            randomColorBox.backgroundColor = myColor
        }
    }
    
    @IBAction func blue(_ sender: UIButton) {
        if sender.isTouchInside {
                   randomColorBox.backgroundColor = myColor
        }
    }
    
}

