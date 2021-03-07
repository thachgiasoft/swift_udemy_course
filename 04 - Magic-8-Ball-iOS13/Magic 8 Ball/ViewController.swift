import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magicBall: UIImageView!
    let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
    var currentSelection = 0
    
    @IBAction func touchAsk(_ sender: UIButton) {
        magicBall.image = ballArray[generateNumber()]
    }
    
    func generateNumber() -> Int{
        let random = Int.random(in: 0...4)
        
        if(random == currentSelection){
            return generateNumber()
        }
        
        return random
    }
}
