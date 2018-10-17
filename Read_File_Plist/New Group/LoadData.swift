//
//  GetCities.swift
//  Read_File_Plist
//
//  Created by Son on 10/11/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import Foundation

class LoadData {
    
    private init(){
        getCity()
        getDistrict()
    }
    static let share = LoadData()
    typealias JSON = Dictionary<String,Any>
    var selectedCity : City_Object? {
        didSet {
            guard selectedCity != nil   else {return}
            filterDictrict = districts.filter({ (districtObject) -> Bool in
                districtObject.cityCode == selectedCity!.code
            })
        }
    }
    var cities : [City_Object] = []
    var districts: [Districts_Object] = []
    var filterDictrict: [Districts_Object] = []
    
    
    // getfilter Dict
    
    //getData City
    func getCity() {
        cities = []
        if let pathFile = Bundle.main.path(forResource: "Cities", ofType: "plist") {
            if let dict = NSDictionary(contentsOfFile: pathFile) as? JSON {
                // Use your myDict here
                if let citiesJSON =  dict["Cities"] as? [JSON] {
                    for city in citiesJSON {
                        cities.append(City_Object(code: city["CityCode"] as? Int, name: city["Name"] as? String))
                    }
                }
            }
        }
    }
    //get Data Distric
    func getDistrict() {
        districts = []
        if let filePath = Bundle.main.path(forResource: "Districts", ofType: "plist"){
            if let dict = NSDictionary(contentsOfFile: filePath) as? JSON {
                if let districtJSON = dict["Districts"] as? [JSON] {
                    for district in districtJSON {
//                        districts.append(Districts_Object(dict: district))
                        
                        districts.append(Districts_Object(cityCode: district["CityCode"] as? Int, districCode: district["DistrictCode"] as? Int, name: district["Name"] as? String))
                    }
                }
            }
        }
    }
}

