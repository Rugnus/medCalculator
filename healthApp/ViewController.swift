//
//  ViewController.swift
//  healthApp
//
//  Created by Sungur on 30.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var interpritationButton: UIButton!
    @IBOutlet weak var oxygenButton: UIButton!
    @IBOutlet weak var scoreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interpritationButton.layer.cornerRadius = 10
        oxygenButton.layer.cornerRadius = 10
        scoreButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    
    @IBAction func interpritationButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showFirstVC", sender: self)
    }
    
    @IBAction func oxygenButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showOxygenVC", sender: self)
    }
    
    @IBAction func scoreButtonPressed(sender: Any) {
        performSegue(withIdentifier: "showScoreVC", sender: self)

    }
    

}

