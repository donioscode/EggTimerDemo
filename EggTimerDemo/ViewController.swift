//
//  ViewController.swift
//  EggTimerDemo
//
//  Created by doniyor normuxammedov on 19/04/24.
//

import UIKit

class ViewController: UIViewController {

    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hardNessBottonPressed(_ sender: UIButton) {
        
         let hardness = sender.currentTitle
        switch hardness {
        case "Soft":
            print(softTime)
        case "Medium":
            print(mediumTime)
        case "Hard":
            print(hardTime)
        default:
            print("Error code")
        }
    }
}

