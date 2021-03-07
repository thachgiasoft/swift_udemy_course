import UIKit

struct Calculator {
    var height: Float = 1.5
    var weight: Int = 100
    var bmi: BMI?
    
    mutating func setHeight(_ value: Float) {
        height = Float(String(format: "%.2f", value))!
    }
    
    mutating func setWeight(_ value: Float) {
        weight = Int(value)
    }
    
    mutating func calculateBmi() {
        let calculatedBMI = Float(weight) / pow(height, 2)
        
        if calculatedBMI < 18.5 {
            bmi = BMI(value: calculatedBMI, advice: "Eat more pies!", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        } else if calculatedBMI < 24.9 {
            bmi = BMI(value: calculatedBMI, advice: "You are good, grab a snack!", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        } else {
            bmi = BMI(value: calculatedBMI, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Woops, don't know"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    func getHeight() -> String {
        let value = String(format: "%.2f", height)
        return "\(value)m"
    }
    
    func getWeight() -> String {
        return "\(weight)Kg"
    }
    
    func getBmi() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
}
