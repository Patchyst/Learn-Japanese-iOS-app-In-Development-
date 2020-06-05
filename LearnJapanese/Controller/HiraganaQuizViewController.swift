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
    var questionFormat = QuestionFormat()
    var quizList = [[""]]
    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    @IBOutlet weak var questionText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let quizGroup = hiraganaLogic.generateQuestions(questionLength: quizList.count, questionGroup: quizList)
        let quizQuestions = QuestionGroup(question: quizGroup[0], answers: [quizGroup[1], quizGroup[2], quizGroup[-1]])
        let question = hiraganaLogic.answerDict[quizQuestions.question]

    }
    @IBAction func answerButton(_ sender: UIButton) {

        
    }
}
