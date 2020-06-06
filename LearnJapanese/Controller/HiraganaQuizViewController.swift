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
    func questionGen(){
        let quizGroup = hiraganaLogic.generateQuestions(questionLength: quizList.count, questionGroup: quizList)
        print(quizGroup)
        let quizQuestions = QuestionGroup(question: quizGroup[0], answers: [quizGroup[0], quizGroup[1], quizGroup[2]])
        let question = hiraganaLogic.answerDict[quizQuestions.question]
        print(quizQuestions.answers)
        questionText.text = question ?? "No Q"
        answerOne.setTitle(quizQuestions.answers[0], for: .normal)
        answerTwo.setTitle(quizQuestions.answers[1], for: .normal)
        answerThree.setTitle(quizQuestions.answers[2], for: .normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        questionGen()
    }
    @IBAction func answerButton(_ sender: UIButton) {
        questionGen()


        
    }
}
