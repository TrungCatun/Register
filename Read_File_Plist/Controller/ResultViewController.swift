//
//  ResultViewController.swift
//  Register
//
//  Created by Son on 10/14/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var City: UILabel!
    @IBOutlet weak var District: UILabel!
    @IBOutlet weak var Age: UILabel!
    @IBOutlet weak var Gender: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        City.text = UserDefaults.standard.object(forKey: "city") as? String
        District.text = UserDefaults.standard.object(forKey: "district") as? String
        Age.text = UserDefaults.standard.object(forKey: "age") as? String
        Gender.text = UserDefaults.standard.object(forKey: "gender") as? String
    }
    
}
