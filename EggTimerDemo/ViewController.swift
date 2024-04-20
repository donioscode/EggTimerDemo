//
//  ViewController.swift
//  EggTimerDemo
//
//  Created by doniyor normuxammedov on 19/04/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var titleLB: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    var  eggTimes = [ "Soft": 3, "Medium": 7, "Hard": 12 ]
    
    var totalTime = 0
    var secondsPassed = 0
    var time = Timer()
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hardNessBottonPressed(_ sender: UIButton) {
        time.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        progressView.progress = 0.0
        secondsPassed = 0
        titleLB.text = hardness
        
       time = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
        @objc func updateTimer() {
            if secondsPassed < totalTime {
                secondsPassed += 1
                progressView.progress = Float(secondsPassed) / Float(totalTime)
            } else {
                time.invalidate()
                titleLB.text = "DONE!"
                playSound()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
}

