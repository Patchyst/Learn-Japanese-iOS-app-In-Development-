//
//  HiraganaViewController.swift
//  LearnJapanese
//
//  Created by Patrick Story on 5/29/20.
//  Copyright © 2020 Patrick Story. All rights reserved.
//
import UIKit

class HiraganaViewController: UIViewController {
    var rowList: [String] = ["rowOne"]
    // Row IBoutlet
    @IBOutlet weak var rowOneButton: UIButton!
    @IBOutlet weak var rowTwoButton: UIButton!
    @IBOutlet weak var rowThreeButton: UIButton!
    @IBOutlet weak var rowFourButton: UIButton!
    @IBOutlet weak var rowFiveButton: UIButton!
    @IBOutlet weak var rowSixButton: UIButton!
    @IBOutlet weak var rowSevenButton: UIButton!
    @IBOutlet weak var rowEightButton: UIButton!
    @IBOutlet weak var rowNineButton: UIButton!
    @IBOutlet weak var rowTenButton: UIButton!
    @IBOutlet weak var switchButton: UISwitch!
    // Loading view
    override func viewDidLoad() {
        super.viewDidLoad()
        // programmatically editing UI
        switchButton.layer.cornerRadius = 30
        switchButton.onTintColor = UIColor.orange
        switchButton.tintColor = UIColor.white
        // setting all the title colors to clear. The titles are not used for cosmetic reasons, but exchanging information over segues
        rowOneButton.setTitleColor(UIColor.clear, for: .normal)
        rowTwoButton.setTitleColor(UIColor.clear, for: .normal)
        rowThreeButton.setTitleColor(UIColor.clear, for: .normal)
        rowFourButton.setTitleColor(UIColor.clear, for: .normal)
        rowFiveButton.setTitleColor(UIColor.clear, for: .normal)
        rowSixButton.setTitleColor(UIColor.clear, for: .normal)
        rowSevenButton.setTitleColor(UIColor.clear, for: .normal)
        rowEightButton.setTitleColor(UIColor.clear, for: .normal)
        rowNineButton.setTitleColor(UIColor.clear, for: .normal)
        rowTenButton.setTitleColor(UIColor.clear, for: .normal)
    }
    @IBAction func rowOnePressed(_ sender: UIButton) {
    }
    @IBAction func subRowOnePressed(_ sender: UIButton) {
        
    }
    
    @IBAction func subRowTwoPressed(_ sender: UIButton) {
        
    }
    @IBAction func rowTwoPressed(_ sender: UIButton) {

    }
    @IBAction func secondRowOnePressed(_ sender: UIButton) {
    }
    @IBAction func secondRowTwoPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        // Go to the Hiragana page
        performSegue(withIdentifier: "goToHiraganaQuiz", sender: self)
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        // return to main page
        dismiss(animated: true, completion: nil)
    }
}
