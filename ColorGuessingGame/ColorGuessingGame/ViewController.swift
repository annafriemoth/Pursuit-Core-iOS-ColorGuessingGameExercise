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
    
    let red = CGFloat.random(in: 0...1)
    let blue = CGFloat.random(in: 0...1)
    let green = CGFloat.random(in: 0...1)
    let alpha = CGFloat.random(in: 0...1)
    
    var score:Int = 0
    
   // let alertController = UIAlertController(title: "Time Up!", message: "Your time is up! You got a score of: \(score) points. Very good!", preferredStyle: .alert)
    
   // let restartAction = UIAlertAction(title: "Restart", style: .default, handler: nil)
    
   // alertController.addAction(restartAction)
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
     let myColor = UIColor(red:red,
                                   green: green,
                                   blue: blue,
                                   alpha: alpha)
    // Do any additional setup after loading the view.
        randomColorBox.backgroundColor = myColor
        print("red color is \(red), blue color is \(blue), green color is \(green)")
        
        updateScoreLabel()
    }

    // let randNum = CGFloat.random(in: 0...1)
   
    @IBOutlet weak var winOrLose: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    func updateScoreLabel()
    {
        scoreLabel?.text = "\(score)"
    }
    
 
    
    @IBAction func buttons(_ sender: UIButton) {
        
        var array = [red,green,blue]
        var sortedArray = array.sorted()
//        sortedArray.last
        var correctAnswer = ""
        
        
        if red == sortedArray.last {
            correctAnswer = "red"
        } else if blue == sortedArray.last{
            correctAnswer = "blue"
        } else if green == sortedArray.last {
            correctAnswer = "green"
        }
        
        
       
        let myColor = UIColor(red:red,
                                      green: green,
                                      blue: blue,
                                      alpha: alpha)
        if sender.isTouchInside {
            
            switch sender.tag {
                   case 0:
                       if correctAnswer == "red" {
                        winOrLose.text = "Correct!"
                        score += 1
                       } else {
                        winOrLose.text = "you lose!"
                        restartAction
                        //reset the game
                        }
                   case 1:
                       if correctAnswer == "green" {
                        winOrLose.text = "Correct!"
                        score += 1
                       } else {
                        winOrLose.text = "you lose!"
                        restartAction
                        //reset the game
                       }
                   case 2:
                       if correctAnswer == "blue" {
                        winOrLose.text = "Correct!"
                        score += 1
                        } else {
                        winOrLose.text = "you lose!"
                        restartAction
                        //reset the game
                       }
                   default:
                       print("Not a color")
                   }
            
            
            // x if red, green, blue... switch?
            // see if color chosen is correct
            // if correct, increase score by 1
            // if wrong, reset game
            // reset color
            
        }
        updateScoreLabel()
    }
    
  

    
}

// .isEnabled
