//
//  ViewController.swift
//  LearnJapanese
//
//  Created by Patrick Story on 5/27/20.
//  Copyright © 2020 Patrick Story. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hiraganaButton: UIButton!
    @IBOutlet weak var katakanaButton: UIButton!
    @IBOutlet weak var basicGrammarButton: UIButton!
    @IBOutlet weak var CreditsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        hiraganaButton.layer.cornerRadius = 40
        katakanaButton.layer.cornerRadius = 40
        basicGrammarButton.layer.cornerRadius = 40
        CreditsButton.layer.cornerRadius = 40
    }
    @IBAction func hiraganaButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToHiragana", sender: self)
    }
    @IBAction func katakanaButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToKatakana", sender: self)
    }
    
    @IBAction func grammarButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToGrammar", sender: self)
    }
    @IBAction func creditsButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToCredits", sender: self)
    }
    
    

}

