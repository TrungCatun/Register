//
//  Read_DistrictsFile.swift
//  Read_File_Plist
//
//  Created by Son on 10/11/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import Foundation

typealias json = Dictionary<String,Any>
func readFile(arrDistrict_Ob: [districtOb]) -> [districtOb] {
    if let filePath = Bundle.main.path(forResource: "Districts", ofType: "plist"){
        if let dict = NSDictionary(contentsOfFile: filePath) as? json {
            if let arrDistrict = dict["Districts"] as? [json] {
                for district in arrDistrict {
                    arrDistrict_Ob.append(districtOb(cityCode: district["CityCode"] as? Int, districCode: district["DistrictCode"] as? Int, name: district["Name"] as? String))
                }
            }
            
        }
    }
    return arrDistrict_Ob
}
