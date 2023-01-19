//
//  ViewController.swift
//  bootcamp_calculator_homework
//
//  Created by Yılmaz Yağız Dokumacı on 18.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var number:Int = 0
    var secondNumber:Int = 0
    var lastAddedNumber:Int = 0
    var isSecondNumber:Bool = false

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = String(number)
    }
    
    
    
    // First row
    
    @IBAction func clearButton(_ sender: Any) {
        number = 0
        lastAddedNumber = 0
        secondNumber = 0
        isSecondNumber = false
        resultLabel.text = String(number)
    }
    
    @IBAction func positiveNegativeButton(_ sender: Any) {
        print("Positive Negative Button")
    }
    
    @IBAction func percentButton(_ sender: Any) {
        print("Percent Button")
    }
    
    @IBAction func divisionButton(_ sender: Any) {
        print("Division Button")
    }
    
    
    
    // Second Row
    
    @IBAction func numberSevenButton(_ sender: Any) {
        addNumber(currentNumber: number, numberButton: 7)
    }
    
    @IBAction func numberEightButton(_ sender: Any) {
        addNumber(currentNumber: number, numberButton: 8)
    }
    
    @IBAction func numberNineButton(_ sender: Any) {
        addNumber(currentNumber: number, numberButton: 9)
    }
    
    @IBAction func multipleButton(_ sender: Any) {
        print("Multiple Button")
    }
    
    // Third Row
    @IBAction func numberFourButton(_ sender: Any) {
        addNumber(currentNumber: number, numberButton: 4)
    }
    
    @IBAction func numberFiveButton(_ sender: Any) {
        
        addNumber(currentNumber: number, numberButton: 5)
    }
    @IBAction func numberSixButton(_ sender: Any) {
        addNumber(currentNumber: number, numberButton: 6)
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
        print("Substraction Button")
    }
    
    
    
    // Fourth Row
    @IBAction func numberOneButton(_ sender: Any) {
        addNumber(currentNumber: number, numberButton: 1)
    }
    @IBAction func numberTwoButton(_ sender: Any) {
        addNumber(currentNumber: number, numberButton: 2)
    }
    @IBAction func numberThreeButton(_ sender: Any) {
        addNumber(currentNumber: number, numberButton: 3)
    }
    
    @IBAction func plusButton(_ sender: Any) {
        isSecondNumber = true
        resultLabel.text = String(secondNumber)
    }
    
    
    
    // Fifth Row

    @IBAction func dotButton(_ sender: Any) {
        print("Dot Button")
    }
    @IBAction func numberZeroButton(_ sender: Any) {
        addNumber(currentNumber: number, numberButton: 0)
    }
    @IBAction func backspaceButton(_ sender: Any) {
        print("Backspace Button")
    }
    @IBAction func equalsButton(_ sender: Any) {
        resultLabel.text = String(number + secondNumber)
        
    }
    
    func addNumber(currentNumber:Int, numberButton:Int) {
        if(isSecondNumber) {
            lastAddedNumber = numberButton
            secondNumber = Int(String("\(secondNumber)" + "\(numberButton)"))!
            resultLabel.text = String(secondNumber)
        } else {
            lastAddedNumber = numberButton
            number = Int(String("\(currentNumber)" + "\(numberButton)"))!
            resultLabel.text = String(number)
        }
      
    }
    
    func backspace(){
    
    }
    
}

