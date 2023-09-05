import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    @IBOutlet weak var buttonInitQuiz: UIButton!
    @IBAction func buttonPressed(_ sender: Any) {
    }
    
    func setupLayout() {
        navigationItem.hidesBackButton = true
        buttonInitQuiz.layer.cornerRadius = 12.0
    }
}

