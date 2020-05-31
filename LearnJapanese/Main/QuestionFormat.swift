import SwiftUI

struct QuestionFormat{
    let question: String
    let incorrectAnswers: [String]
    let answer: String
    init(question: String, answer: String, incorrectAnswers: [String]) {
        self.question = question
        self.answer = answer
        self.incorrectAnswers = incorrectAnswers
    }
}


