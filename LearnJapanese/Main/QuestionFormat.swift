import SwiftUI

struct QuestionFormat{
    func checkMatch(valueOne: Int, valueTwo: Int!, endRange: Int) -> Int{
        var questionIndex: Int = 0
        for value in 0 ... endRange{
            if valuetwo == nil{
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
            else if valuetwo != nil{
                
            }
    }
}


