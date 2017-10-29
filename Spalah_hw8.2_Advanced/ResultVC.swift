//
//  ResultVC.swift
//  Spalah_hw8.2_Advanced
//
//  Created by Sergey Gaponov on 10/29/17.
//  Copyright © 2017 Sergey Gaponov. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {

    var score = 0
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Your score: \(score)"
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showStartVC",
            let destVC = segue.destination as? StartVC {
            destVC.score = self.score
        }
    }
}
