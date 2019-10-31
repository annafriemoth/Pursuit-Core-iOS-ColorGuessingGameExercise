//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Anna Friemoth on 10/29/19.
//  Copyright © 2019 Anna Friemoth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var score:Int = 0
    
    var correctAnswer = ""
    
    @IBOutlet weak var randomColorBox: UIView!
    
    
    
    func randomColor () {
        let red = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let alpha = CGFloat.random(in: 0...1)
        print("red color is \(red), blue color is \(blue), green color is \(green)")
        let myColor = UIColor(red:red,
                              green: green,
                              blue: blue,
                              alpha: alpha)
        // Do any additional setup after loading the view.
        randomColorBox.backgroundColor = myColor
        
        let array = [red,green,blue]
        
        if red == array.max(){
            correctAnswer = "red"
        } else if blue == array.max(){
            correctAnswer = "blue"
        } else if green == array.max(){
            correctAnswer = "green"
        }
        
        
    }
    
    // let alertController = UIAlertController(title: "Time Up!", message: "Your time is up! You got a score of: \(score) points. Very good!", preferredStyle: .alert)
    
    // let restartAction = UIAlertAction(title: "Restart", style: .default, handler: nil)
    
    // alertController.addAction(restartAction)
    
    struct game {
        static var IsOver : Bool = false
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomColor()
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
        
            switch sender.tag {
            case 0:
                if correctAnswer == "red" {
                    winOrLose.text = "Correct!"
                    score += 1
                    randomColor()
                } else {
                    winOrLose.text = "you lose!"
                    score = 0
                    
                    
                    //reset the score
                }
            case 1:
                if correctAnswer == "green" {
                    winOrLose.text = "Correct!"
                    score += 1
                    randomColor()
                } else {
                    winOrLose.text = "you lose!"
                    score = 0
                    //reset the score
                }
            case 2:
                if correctAnswer == "blue" {
                    winOrLose.text = "Correct!"
                    score += 1
                    randomColor()
                } else {
                    winOrLose.text = "you lose!"
                    score = 0
                    
                    //reset the score
                }
            default:
                print("Not a color")
            }
            
            
            // x if red, green, blue... switch?
            // see if color chosen is correct
            // if correct, increase score by 1
            // if wrong, reset game
            // reset color
            updateScoreLabel()
    }
    
    
    
    
}

// .isEnabled
