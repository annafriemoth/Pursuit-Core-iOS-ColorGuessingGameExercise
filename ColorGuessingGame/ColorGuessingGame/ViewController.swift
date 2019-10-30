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
    
    var myColor = UIColor(red: CGFloat.random(in: 0...1),
                          green: CGFloat.random(in: 0...1),
                          blue: CGFloat.random(in: 0...1),
                          alpha: CGFloat.random(in: 0...1))
    
    // var score =
        
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
        randomColorBox.backgroundColor = myColor
        
    }

    

    // let randNum = CGFloat.random(in: 0...1)
   
    
    @IBAction func buttons(_ sender: UIButton) {
        if sender.isTouchInside {
            //randomColorBox.backgroundColor = myColor
        }
    }
    
  

    
}

