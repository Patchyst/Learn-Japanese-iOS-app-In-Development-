import UIKit

struct HiraganaLogic {
    let hiraganaGroupOne = [["あ", "え", "い", "お", "う"], ["か", "き", "く", "け", "こ"], ["さ", "し", "す", "せ", "そ"], ["た","ち","つ","て","と"], ["な", "に", "ぬ", "ね", "の"]]
    let hiraganaGroupTwo = [["は", "ひ", "ふ", "へ", "ほ"], ["ま", "み", "む", "め", "も"], ["や", "ゃ", "ゆ", "ゅ", "よ", "ょ"], ["ら","り","る","れ","ろ"], ["わ", "ゐ", "ゑ", "を", "ん"]]
    let dakutenGroup = [["が", "ぎ", "ぐ", "げ", "ご"], ["ざ", "じ", "ず", "ぜ", "ぞ"], ["だ", "ぢ", "づ", "で", "ど"], ["ば", "び", "ぶ", "べ", "ぼ"], ["ぱ", "ぴ", "ぷ", "ぺ", "ぽ"]]
    // Unfinished function
    func generateQuestions(questionLength: Int, questionGroup: [[String]]) -> [String]{
        let randomGroup: Int
        randomGroup = Int.random(in: 0 ... questionLength - 1)
        let group = questionGroup[randomGroup]
        return group
    }
    }


