//
//  RadioAndPicker.swift
//  Register
//
//  Created by Son on 10/17/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class RadioAndPicker: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerAge: UIPickerView!
    @IBOutlet var arrButton: [UIButton]!
    var arrPickerAge = Array(1...18)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerAge.delegate = self
        pickerAge.dataSource = self
        pickerAge.selectRow(17, inComponent: 0, animated: true)
    }
    // Radio selected
    @IBAction func actionClick(_ sender: UIButton) {
        arrButton.forEach {
            button in
            button.isSelected = false
        }
        sender.isSelected = true
        UserDefaults.standard.set( sender.title(for: .selected) , forKey: "gender")
    }
    // Picker View
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrPickerAge.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(arrPickerAge[row])
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UserDefaults.standard.set(String(arrPickerAge[row]) , forKey: "age")
    }
}
