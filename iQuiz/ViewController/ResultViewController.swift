import UIKit

class ResultViewController: UIViewController {
    
    var score: Int?

    @IBOutlet weak var labelResult: UILabel!
    

    @IBOutlet weak var labelPercentage: UILabel!
    
    
    @IBOutlet weak var buttonRestartQuiz: UIButton!
    
    func setupLayout() {
        navigationItem.hidesBackButton = true
        buttonRestartQuiz.layer.cornerRadius = 12.0
    }
    
    func setupResult(){
        guard let score = score else { return }
        labelResult.text = "Você acertou \(score) de \(questions.count) questões"
        
        let percentage = (score * 100) / questions.count
        labelPercentage.text = "Percentual final: \(percentage)%"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupResult()
    }
}
