import SwiftUI

struct QuestionFormat{
    func checkMatch(valueOne: Int, valueTwo: Int!, endRange: Int) -> Int{
        if valuetwo == nil{
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
        else if valuetwo != nil{
            for value in 0 ... endRange{
                switch value {
                case _ where value != valueOne && value != valuetwo!:
                    questionIndex = value
                    break
                case _ where value == valueOne:
                    continue
                default:
                    break
                }
            }
        }
    }
}


