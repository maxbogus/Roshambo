//
//  ViewController.swift
//  Roshambo
//
//  Created by Max Boguslavskiy on 15/01/2018.
//  Copyright © 2018 Max Boguslavskiy. All rights reserved.
//

import UIKit

class StartGameViewController: UIViewController {
    @IBAction func playGameByScissor(_ sender: Any, forEvent event: UIEvent) {
        performSegue(withIdentifier: "playScissor", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playRock" {
            let controller = segue.destination as! ResultsViewController
            controller.result = playGame(handIndex: 0)
        }
        if segue.identifier == "playPaper" {
            let controller = segue.destination as! ResultsViewController
            controller.result = playGame(handIndex: 1)
        }
        if segue.identifier == "playScissor" {
            let controller = segue.destination as! ResultsViewController
            controller.result = playGame(handIndex: 2)
        }
    }
    
    func playGame (handIndex: Int) -> String {
        let hand = ["rock", "paper", "scissors"]
        let otherPlayerResult = generateOtherPlayerResult()
        return checkWinner(p1: hand[handIndex], p2: hand[otherPlayerResult])
    }
    
    func checkWinner (p1: String, p2: String) -> String {
        let beats = ["rock": "scissors", "scissors": "paper", "paper": "rock"]
        if beats[p1] == p2 {
            return "\(p1.capitalized) beats \(p2). You won!"
        }
        if beats[p2] == p1 {
            return "\(p1.capitalized) loses \(p2). You lost!"
        }
        return "\(p1.capitalized) cannot beat \(p2). Draw!"
    }
    
    func generateOtherPlayerResult () -> Int {
        return Int(arc4random_uniform(_: 3))
    }
}

