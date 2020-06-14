import UIKit

struct HiraganaLogic{
    var questionLogic = QuestionFormat()
    let hiraganaGroupOne = [["あ", "え", "い", "お", "う"], ["か", "き", "く", "け", "こ"], ["さ", "し", "す", "せ", "そ"], ["た","ち","つ","て","と"], ["な", "に", "ぬ", "ね", "の"]]
    
    let hiraganaGroupTwo = [["は", "ひ", "ふ", "へ", "ほ"], ["ま", "み", "む", "め", "も"], ["や", "ゃ", "ゆ", "ゅ", "よ", "ょ"], ["ら","り","る","れ","ろ"], ["わ", "ゐ", "ゑ", "を", "ん"]]
    
    let dakutenGroup = [["が", "ぎ", "ぐ", "げ", "ご"], ["ざ", "じ", "ず", "ぜ", "ぞ"], ["だ", "ぢ", "づ", "で", "ど"], ["ば", "び", "ぶ", "べ", "ぼ"], ["ぱ", "ぴ", "ぷ", "ぺ", "ぽ"]]
    
    let answerDict = ["あ": "a", "え":"e", "い":"i", "お":"o", "う":"u", "か":"ka", "き": "ki", "く": "ku", "け": "ke", "こ": "ko", "さ": "sa", "し": "shi", "す": "su", "せ": "se", "そ": "so", "た": "ta","ち": "chi","つ":"tsu","て":"te","と":"to", "な":"na", "に":"ni", "ぬ":"nu", "ね":"ne", "の":"no", "は":"ha", "ひ":"hi", "ふ":"fu", "へ":"he", "ほ":"ho", "ま":"ma", "み":"mi", "む":"mu", "め":"me", "も":"mo", "や":"ya", "ゃ":"ya", "ゆ":"yu", "ゅ":"yu", "よ":"yo", "ょ":"yo", "ら":"ra","り":"ri","る":"ru","れ":"re","ろ":"ro", "わ":"wa", "ゐ":"wi", "ゑ":"we", "を":"wo", "ん":"n"]
    func generateQuestions(questionLength: Int, questionGroup: [[String]]) -> [String]{
        let randomGroup: Int
        var questionOne: Int
        var questionTwo: Int
        randomGroup = Int.random(in: 0 ... questionLength - 1)
        let group = questionGroup[randomGroup]
        let randomQuestion = Int.random(in: 0 ... group.count - 1)
        print(" ")
        let answer = randomQuestion
        let question = randomQuestion
        questionOne = questionLogic.checkMatch(valueOne: randomQuestion, valuetwo: nil, endRange: group.count - 1)
        questionTwo = questionLogic.checkMatch(valueOne: randomQuestion, valuetwo: questionOne, endRange: group.count - 1)
        let quizGroup = [group[question], group[questionOne], group[questionTwo], group[answer]]
        return quizGroup
    }
}


