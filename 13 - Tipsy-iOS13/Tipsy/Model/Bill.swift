import Foundation

struct Bill {
    var percent: Float = 0.1
    var value: Float = 0.0
    var people: Int = 2
    
    mutating func setPercent(_ percent: Float) {
        self.percent = percent
    }
    
    mutating func setValue(_ value: String) {
        self.value = Float(value) ?? 0.0
    }
    
    mutating func setPeople(_ value: Double) {
        self.people = Int(value)
    }
    
    func getPeople() -> String {
        return String(people)
    }
    
    func calculateBill() -> Float {
        return (value * (1.0 + percent)) / Float(people)
    }
}
