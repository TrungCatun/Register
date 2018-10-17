//
//  TableViewController.swift
//  Read_File_Plist
//
//  Created by Son on 10/9/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var newCities = LoadData.share.cities
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newCities.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let eachCity = newCities[indexPath.row]
        cell.textLabel?.text = eachCity.name
        cell.detailTextLabel?.text = String(eachCity.code!)
        
        return cell
    }
    
    // Passing Data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DictrictTableViewController {
            if let indexPath = tableView.indexPathForSelectedRow{
                LoadData.share.selectedCity = newCities[indexPath.row]
                UserDefaults.standard.set((newCities[indexPath.row]).name, forKey: "city")
            }
        }
    }
    
}
