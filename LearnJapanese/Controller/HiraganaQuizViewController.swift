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
        questionGen()
    }
    @IBAction func answerButton(_ sender: UIButton) {
        // The output of questionGen is the correct answer.
        
        let senderTitle = sender.titleLabel?.text ?? "na"
        let correctAnswer = questionText.text ?? "na"
        let userAnswer = hiraganaLogic.answerDict[senderTitle]
        
        if userAnswer == correctAnswer{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        // delay 0.2 seconds so user can see if their answer was correct or not
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(questionGen), userInfo: nil, repeats: false)
    }
    
    @objc func questionGen(){
        
        let quizGroup = hiraganaLogic.generateQuestions(questionLength: quizList.count, questionGroup: quizList)
        // the first element(0) is the question, the answers list includes 2 wrong answers and one matching element(0)
        let quizQuestions = QuestionGroup(question: quizGroup[0], answers: [quizGroup[0], quizGroup[1], quizGroup[2]])
        
        // converting element the Hiragana question element to English using the answer dictionary
        let question = hiraganaLogic.answerDict[quizQuestions.question] ?? "ERROR: No Question supplied"
        
        // randomizing quesiton location so correct answer doesn't show up on the same button every time. Explanation for how the checkMatch function can be found in QuestionFormat.swift
        let indexRange = quizQuestions.answers.count - 1
        let randomQuestionIndex = Int.random(in: 0 ... indexRange)
        let questionOneIndex = questionFormat.checkMatch(valueOne: randomQuestionIndex, valuetwo: nil, endRange: indexRange)
        let questionTwoIndex = questionFormat.checkMatch(valueOne: randomQuestionIndex, valuetwo: questionOneIndex, endRange: indexRange)
        
        // setting button titles
        answerOne.setTitle(quizQuestions.answers[randomQuestionIndex], for: .normal)
        answerTwo.setTitle(quizQuestions.answers[questionOneIndex], for: .normal)
        answerThree.setTitle(quizQuestions.answers[questionTwoIndex], for: .normal)
        questionText.text = question
        // setting all Question background colors back to white
        answerOne.backgroundColor = UIColor.white
        answerTwo.backgroundColor = UIColor.white
        answerThree.backgroundColor = UIColor.white
        
    }
}
