//
//  ViewController.swift
//  EggTimerDemo
//
//  Created by doniyor normuxammedov on 19/04/24.
//

import UIKit

class ViewController: UIViewController {

    var  eggTimes = [ "Soft": 300, "Medium": 420, "Hard": 720 ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var secondsRemaining = 60
    
    @IBAction func hardNessBottonPressed(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        print(hardness)
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
        @objc func updateTimer() {
            if secondsRemaining > 0 {
                print("\(secondsRemaining) seconds.")
                secondsRemaining -= 1
            
        }
      
    }
}

