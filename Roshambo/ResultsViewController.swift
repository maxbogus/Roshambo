//
//  ResultsController.swift
//  Roshambo
//
//  Created by Max Boguslavskiy on 16/01/2018.
//  Copyright © 2018 Max Boguslavskiy. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var result: String?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        label.text = result
    }
    
    @IBAction func playAgain(_ sender: Any) {
        label.text = nil
        self.dismiss(animated: true, completion: nil)
    }
}
