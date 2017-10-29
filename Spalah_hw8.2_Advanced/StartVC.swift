//
//  StartVC.swift
//  Spalah_hw8.2_Advanced
//
//  Created by Sergey Gaponov on 10/29/17.
//  Copyright © 2017 Sergey Gaponov. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Last score \(score)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        scoreLabel.text = "Last score \(score)"
    }
    
    @IBAction func backToStartVC(_ sender: UIStoryboardSegue) {
        
        
    }
}
