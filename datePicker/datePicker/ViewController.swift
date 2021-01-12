//
//  ViewController.swift
//  DatePicker
//
//  Created by 이은지 on 2021/01/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var startPicker: UIDatePicker!
    @IBOutlet weak var endPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputLabel.text = ""
        outputLabel.numberOfLines = 5
        outputLabel.layer.cornerRadius = 10
//        outputLabel.layer.backgroundColor = UIColor.systemGray6.cgColor
        outputLabel.textAlignment = .center
       
    }
//
//    @IBAction func nameTextField(_ sender: UITextField) {
//    }
    
    @IBAction func startTimePicker(_ sender: UIDatePicker) {
    }
    
    @IBAction func endTimePicker(_ sender: UIDatePicker) {
    }
    
    @IBAction func pickerButton(_ sender: UIButton) {
        let startTimePickerView = startPicker
        let endTimePickerView = endPicker
        
        outputLabel.layer.backgroundColor = UIColor.systemGray6.cgColor
        
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        
        outputLabel.text = nameTextField.text! + " 과목은 \n\n" + formatter.string(from: startTimePickerView!.date) + "에 시작하여 \n" + formatter.string(from: endTimePickerView!.date) + "에 끝납니다."
    }
    
}

