//
//  ViewController.swift
//  textField
//
//  Created by 이은지 on 2021/01/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TFname: UITextField!
    @IBOutlet weak var LBtext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonOK(_ sender: UIButton) {
        LBtext.text = TFname.text! + " 님,\n\n 안녕하세요 :)"
    }
    
}

