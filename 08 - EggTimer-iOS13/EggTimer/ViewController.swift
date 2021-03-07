import UIKit

class ViewController: UIViewController {
  
    let eggTime = ["Soft": 300, "Medium": 420, "Hard": 720]
    var totalTime = 0
    var timePass = 0
    var timer = Timer()
    
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardSelection(_ sender: UIButton) {
        progressBar.progress = 0.0
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        timePass = 0
        totalTime = eggTime[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime(){
        if timePass < totalTime {
            progressBar.progress = Float(timePass) / Float(totalTime)
            
            header.text = "How do you like your eggs?"
            timePass += 1
        } else {
            header.text = "Done!"
            timer.invalidate()
            progressBar.progress = 1.0
        }
    }
}
