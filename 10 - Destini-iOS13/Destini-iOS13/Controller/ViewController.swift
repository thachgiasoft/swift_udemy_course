import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    var adv = Adventure()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
        
    @IBAction func buttonPress(_ sender: UIButton) {
        adv.selectStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        label.text = adv.getTitle()
        choiceOne.setTitle(adv.getButton("choice1"), for: .normal)
        choiceTwo.setTitle(adv.getButton("choice2"), for: .normal)
    }
}

