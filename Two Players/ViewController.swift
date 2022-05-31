//
//  ViewController.swift
//  Two Players
//
//  Created by Samuel Pena on 5/30/22.
//  Copyright © 2022 Samuel Pena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var playerField: UITextField!
    @IBOutlet weak var beginGameButton: UIButton!
    
    var numberOfPlayers = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerField.becomeFirstResponder()
        nameLabel.text = "Player 1: "
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        if numberOfPlayers == 0 {
            playerOneLabel.text = "Player 1: \(playerField.text!)"
            numberOfPlayers += 1
            playerField.text = ""
            nameLabel.text = "Player 2:"
        } else {
            playerTwoLabel.text = "Player 2: \(playerField.text!)"
            playerField.text = ""
            nameLabel.text = ""
            playerField.resignFirstResponder()
            playerField.isEnabled = false
            beginGameButton.isHidden = false
        }
    }
    

}

