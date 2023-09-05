import Foundation

struct Question {
    var title: String
    var responses: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(title: "Qual feitiço para desarmar um oponente, em Harry Potter?", responses: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], correctAnswer: 2),
    Question(title: "Quando foi lançado o filme Vingadores Ultimato?", responses: ["2019", "2018", "2017"], correctAnswer: 0),
    Question(title: "Quando foi lançado o filme Avatar 2?", responses: ["2014", "2022", "2023"], correctAnswer: 1)
]


