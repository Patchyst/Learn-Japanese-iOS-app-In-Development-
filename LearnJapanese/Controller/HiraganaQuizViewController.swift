//
//  HiraganaQuizViewController.swift
//  LearnJapanese
//
//  Created by Patrick Story on 5/31/20.
//  Copyright © 2020 Patrick Story. All rights reserved.
//

import UIKit

class HiraganaQuizViewController: UIViewController {
    var hiraganaLogic = HiraganaLogic()
    var quizList = [[""]]
    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        let questionGroup = hiraganaLogic.generateQuestions(questionLength: quizList.count, questionGroup: quizList)
        // Unfin
    }
}   
}
