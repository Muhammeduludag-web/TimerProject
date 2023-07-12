//
//  ViewController.swift
//  TimerProject
//
//  Created by uludağ on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    
    
    var timer = Timer()
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 50
        timeLabel.text = "Time : \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunctions), userInfo: nil, repeats: true)
        
    }
        
    @objc func timerFunctions() {
        
        timeLabel.text = "Time : \(counter)"
        // counter = counter - 1
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Times Over "
        }
         
    }
    
    
    
    @IBAction func buttonClickted(_ sender: Any) {
        print("Button clickted")
        /*
        counter = 50
        timeLabel.text = "Time : \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunctions), userInfo: nil, repeats: true)
        
    }
        
    @objc func timerFunctions() {
        
        timeLabel.text = "Time : \(counter)"
        // counter = counter - 1
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Times Over "
        }
         */
    }
    
}

