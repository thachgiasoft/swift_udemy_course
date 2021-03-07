import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    
    let images = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    @IBAction func rollPress(_ sender: UIButton) {
        diceOne.image = images[randomNumber()]
        diceTwo.image = images[randomNumber()]
    }
    
    func randomNumber() -> Int{
        return Int.random(in: 0...5)
    }
}
