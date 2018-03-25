//
//  ViewController.swift
//  iOS Experiment 1.3 Roulette
//
//  Created by mac on 3/25/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let roulettes = [0, 0, 0, 0, 1, 1, 1, 1, 2]
    
    @IBOutlet weak var buttonText: UIButton!
    @IBOutlet weak var yourGuess: UISwitch!
    @IBAction func changeGuess(_ sender: Any) {
        if yourGuess.isOn{
            yourGuess.onTintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            var theGuess = 0
        }
        else {
            yourGuess.onTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            var theGuess = 1
        }
    }
    @IBAction func spinner(_ sender: Any) {
        let randomIndex = Int(arc4random_uniform(UInt32(roulettes.count)))
        let randomItem = roulettes[randomIndex]
        if randomItem == theGuess {
            buttonText.setTitle("You Win", for: <#T##UIControlState#>)
        }
        else {
            buttonText.setTitle("You Lose", for: <#T##UIControlState#>)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yourGuess.setOn(true, animated: true)
        yourGuess.onTintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        var theGuess = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

