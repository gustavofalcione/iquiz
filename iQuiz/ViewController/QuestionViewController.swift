import UIKit

class QuestionViewController: UIViewController {
    var score = 0
    var questionNumber = 0
    
    @IBOutlet weak var labelTitleQuestion: UILabel!
    @IBOutlet var buttonResponses: [UIButton]!
    @IBAction func buttonPressResponse(_ sender: UIButton) {
        let correctAnswersCounter = questions[questionNumber].correctAnswer == sender.tag
        
        if correctAnswersCounter {
            score += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(setupQuestion), userInfo: nil, repeats: false)
        } else {
            navigateToResultScreen()
        }
    }
    
    func navigateToResultScreen(){
        performSegue(withIdentifier: "goToResultScreen", sender: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupQuestion()
    }
    
    func setupLayout() {
        navigationItem.hidesBackButton = true
        labelTitleQuestion.numberOfLines = 0
        labelTitleQuestion.textAlignment = .center
        
        for button in buttonResponses {
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func setupQuestion() {
        labelTitleQuestion.text = questions[questionNumber].title
        
        for button in buttonResponses {
            let buttonTitle = questions[questionNumber].responses[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.score = score
    }
}
