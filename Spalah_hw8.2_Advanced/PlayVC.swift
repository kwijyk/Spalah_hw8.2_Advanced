//
//  PlayVC.swift
//  Spalah_hw8.2_Advanced
//
//  Created by Sergey Gaponov on 10/29/17.
//  Copyright © 2017 Sergey Gaponov. All rights reserved.
//

import UIKit

class PlayVC: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var tapButtons: [UIButton]!
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 30
    var tapsCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "SCORE: \(tapsCount)"
        timerLabel.text = "\(counter)"
        changingEnabledButton()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }


    @IBAction func actionPlayButton(_ sender: UIButton) {
        
        tapsCount += 1
        scoreLabel.text = "Score: \(tapsCount)"
        changingEnabledButton()
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.identifier == "showResultVC",
            let resultVC = segue.destination as? ResultVC {
            
            resultVC.score = tapsCount
        }
    }
    
    // MARK: - Self method
    
    func changingEnabledButton() {
        
        for button in tapButtons {
            button.alpha = 0.3
            button.isEnabled = false
        }
        
        let button = tapButtons[Int(arc4random_uniform(3))]
        button.alpha = 1
        button.isEnabled = true
    }
    
    @objc func timerAction() {
        counter -= 1
        timerLabel.text = "\(counter)"
        
        if counter == 0 {
            timer.invalidate()
            self.performSegue(withIdentifier: "showResultVC", sender: nil)
        }
    }
    
}


