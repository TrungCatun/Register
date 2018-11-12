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
    @IBOutlet weak var btnEdit: UIBarButtonItem!
    var window: UIWindow?
    var isShowrightButton: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        City.text = UserDefaults.standard.object(forKey: "city") as? String
        District.text = UserDefaults.standard.object(forKey: "district") as? String
        Age.text = UserDefaults.standard.object(forKey: "age") as? String ?? "18"
        Gender.text = UserDefaults.standard.object(forKey: "gender") as? String
        btnEdit.isEnabled = isShowrightButton
    }
    
    @IBAction func editFromFirst(_ sender: UIButton) {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        let result = mainSB.instantiateViewController(withIdentifier: "first")
        let navigation = UINavigationController(rootViewController: result)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        
    }
    
    
}
