//
//  ViewController.swift
//  Roshambo
//
//  Created by Max Boguslavskiy on 15/01/2018.
//  Copyright © 2018 Max Boguslavskiy. All rights reserved.
//

import UIKit

class StartGameViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playGame(_ sender: Any, forEvent event: UIEvent) {
        // get action button tag
        let playerResult = 0
        // generate other player result
        let otherPlayerResult = generateResult()
        var result = "lost"
        if playerResult == otherPlayerResult {
            result = "tie"
        } else {
            
        }
        // generate message 
    }
    
    func generateResult () -> Int {
        return Int(arc4random_uniform(_: 3))
    }

}

