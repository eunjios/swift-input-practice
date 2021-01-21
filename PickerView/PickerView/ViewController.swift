//
//  ViewController.swift
//  PickerView
//
//  Created by 이은지 on 2021/01/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 5
    let PICKER_VIEW_COLUMN = 1
    var imageArray: [UIImage?] = []
    var imageFileName = ["1.JPG", "2.JPG", "3.JPG", "4.JPG", "5.JPG"]
    var imageCaption = ["1. ✨", "2. 🚧", "3. 📻", "4. 🎅🏼", "5. 🎄"]
    
    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    
    override func viewDidLoad() {
        imageView.layer.zPosition = 1
        pickerImage.layer.zPosition = 2
        labelTitle.layer.zPosition = 2
        
        super.viewDidLoad()
        // imageArray 에 배열 추가
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        // 생성한 배열을 이용해 라벨값, 이미지의 초기값을 설정
        imageView.image = imageArray[0]
    }
    
    // component 의 수를 정수 값으로 넘겨주는 메서드 (피커뷰에 표시되는 열의 개수)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    // component 피커 뷰의 해당 열에서 선택할 수 있는 행의 개수 (데이터의 개수)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    // 각 열의 타이틀
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageCaption[row]
    }
    
    // 피커 뷰 눌렀을 때 실행
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imageView.image = imageArray[row]
    }

}

