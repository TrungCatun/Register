//
//  DictrictTableViewController.swift
//  Read_File_Plist
//
//  Created by Son on 10/10/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class DictrictTableViewController: UITableViewController {
    
    var newDistricts : [Districts_Object] = []
    var bucket: Int?
//    let loadData = LoadData()
    override func viewDidLoad() {
        super.viewDidLoad()
        newDistricts = LoadData.share.filterDictrict
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newDistricts.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellDetail", for: indexPath)
        
        let eachDistrict = newDistricts[indexPath.row]
        cell.textLabel?.text = eachDistrict.name
        cell.detailTextLabel?.text = String(eachDistrict.districCode!)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set((newDistricts[indexPath.row]).name, forKey: "district")
    }
    
}
