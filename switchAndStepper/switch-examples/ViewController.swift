//
//  ViewController.swift
//  switch-examples
//
//  Created by 이은지 on 2021/01/10.
//

import UIKit

class ViewController: UIViewController {

    var treeImage: UIImage?
    var treeChristmasImage: UIImage?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var giftLable: UILabel!
    @IBOutlet weak var giftStepper: UIStepper!
    @IBOutlet weak var modeSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        treeImage = UIImage(named: "tree.png")
        treeChristmasImage = UIImage(named: "treeChristmas.png")
        
        imageView.image = treeImage
    }

    @IBAction func switchChristmas(_ sender: UISwitch) {
        if sender.isOn {
            imageView.image = treeChristmasImage
        } else {
            imageView.image = treeImage
        }
    }
    
    @IBAction func presentStepper(_ sender: UIStepper) {
        giftLable.text = Int(sender.value).description
    }
    
    @IBAction func presentButt(_ sender: Any) {
        var alertTitle = ""
        var alertMessage = ""
        if !(modeSwitch.isOn) {
            alertTitle = "Sorry"
            alertMessage = "it is not christmas!"
        } else {
            for _ in 0..<Int(giftStepper.value) {
                alertTitle = alertTitle + "🎁"
            }
            alertMessage = "This is for you!"
        }
        
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

