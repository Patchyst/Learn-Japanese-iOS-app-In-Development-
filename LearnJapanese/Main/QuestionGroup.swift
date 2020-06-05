//
//  QuestionGroup.swift
//  LearnJapanese
//
//  Created by Patrick Story on 6/5/20.
//  Copyright © 2020 Patrick Story. All rights reserved.
//

import SwiftUI

struct QuestionGroup{
    let question: String
    let incorrectAnswers: [String]
    let answer: String
    init(question: String, answer: String, incorrectAnswers: [String]) {
        self.question = question
        self.answer = answer
        self.incorrectAnswers = incorrectAnswers
    }

}
