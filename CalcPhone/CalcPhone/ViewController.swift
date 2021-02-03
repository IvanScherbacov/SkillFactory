//
//  ViewController.swift
//  CalcPhone
//
//  Created by Ivan Shcherbakov on 02.02.2021.
//

import UIKit

class ViewController: UIViewController {

    
    //@IBOutlet weak var resultMonitorView: UILabel!
    @IBOutlet weak var resultMonitorView: UILabel!
    
    @IBOutlet weak var clearView: UIButton!
    @IBOutlet weak var minusView: UIButton!
    @IBOutlet weak var divisionView: UIButton!
    @IBOutlet weak var multiplicationView: UIButton!
    @IBOutlet weak var subtractionView: UIButton!
    @IBOutlet weak var additionView: UIButton!
    @IBOutlet weak var resultView: UIButton!
    
    @IBOutlet weak var nineView: UIButton!
    @IBOutlet weak var eigthView: UIButton!
    @IBOutlet weak var sevenView: UIButton!
    @IBOutlet weak var sixView: UIButton!
    @IBOutlet weak var fiveView: UIButton!
    @IBOutlet weak var fourView: UIButton!
    @IBOutlet weak var threeView: UIButton!
    @IBOutlet weak var twoView: UIButton!
    @IBOutlet weak var oneView: UIButton!
    
    @IBOutlet weak var commaView: UIButton!
    
    var action : String = ""
    var temp : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func result(_ sender: UIButton) {
        switch action {
        case "+": if let a = Int(temp) {
            if let b = Int(resultMonitorView.text!) {
                resultMonitorView.text = String (a + b)
                action = ""
            }
        }
        case "-": if let a = Int(temp) {
            if let b = Int(resultMonitorView.text!) {
                resultMonitorView.text = String (a - b)
                action = ""
            }
        }
        case "*": if let a = Double(temp) {
            if let b = Double(resultMonitorView.text!) {
                resultMonitorView.text = String (a * b)
                action = ""
            }
        }
        case "/": if let a = Double(temp) {
            if let b = Double(resultMonitorView.text!) {
                resultMonitorView.text = String (a / b)
                action = ""
            }
        }
        default:
            break
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        resultMonitorView.text = ""
    }
    
    @IBAction func nine(_ sender: UIButton) {
        resultMonitorView.text = "9" + self.resultMonitorView.text!
    }
    
    @IBAction func eight(_ sender: UIButton) {
        resultMonitorView.text = "8" + self.resultMonitorView.text!
    }
    
    @IBAction func seven(_ sender: UIButton) {
        resultMonitorView.text = "7" + self.resultMonitorView.text!
    }
    
    @IBAction func six(_ sender: UIButton) {
        resultMonitorView?.text = "6" + self.resultMonitorView.text!
    }
    
    @IBAction func five(_ sender: UIButton) {
        resultMonitorView.text = "5" + self.resultMonitorView.text!
    }
    
    @IBAction func four(_ sender: UIButton) {
        resultMonitorView.text = "4" + self.resultMonitorView.text!
    }
    
    @IBAction func three(_ sender: UIButton) {
        resultMonitorView.text = "3" + self.resultMonitorView.text!
    }
    
    @IBAction func two(_ sender: UIButton) {
        resultMonitorView.text = "2" + self.resultMonitorView.text!
    }
    
    @IBAction func one(_ sender: UIButton) {
        resultMonitorView.text = "1" + self.resultMonitorView.text!
    }
    
    @IBAction func zero(_ sender: UIButton) {
        resultMonitorView.text = "0" + self.resultMonitorView.text!
    }
    
    @IBAction func sum(_ sender: UIButton) {
        action = "+"
        temp = resultMonitorView.text!
        resultMonitorView.text = ""
    }
    

    @IBAction func subtraction(_ sender: UIButton) {
        action = "-"
        temp = resultMonitorView.text!
        resultMonitorView.text = ""
    }
    
   
    
    @IBAction func multiplication(_ sender: UIButton) {
        action = "*"
        temp = resultMonitorView.text!
        resultMonitorView.text = ""
    }
    
    
    @IBAction func division(_ sender: UIButton) {
        action = "/"
        temp = resultMonitorView.text!
        resultMonitorView.text = ""
    }
    
    
    @IBAction func minius(_ sender: UIButton) {
        self.resultMonitorView.text?.insert("-", at:  self.resultMonitorView.text!.startIndex)
    }
}



