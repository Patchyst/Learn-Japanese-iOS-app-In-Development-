import SwiftUI

struct QuestionFormat{
    func checkMatch(valueOne: Int, valueTwo: Int!, endRange: Int) -> Int{
        var questionIndex: Int = 0
        for value in 0 ... endRange{
            switch value {
            case _ where value != valueOne:
             questionIndex = value
                break
             case _ where value == valueOne:
                continue
             default:
                questionIndex = 0
                }
        }
    }
}


