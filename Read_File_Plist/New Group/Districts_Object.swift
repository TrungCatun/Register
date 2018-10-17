//
//  Districts_Object.swift
//  Read_File_Plist
//
//  Created by Son on 10/11/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import Foundation

class Districts_Object {
    var cityCode: Int?
    var districCode: Int?
    var name: String?
    
//    init(dict: Dictionary<String,Any>) {
//        self.cityCode = dict["CityCode"] as? Int
//        
//    }
    
    init(cityCode: Int?, districCode: Int?, name: String?) {
        self.cityCode = cityCode
        self.districCode = districCode
        self.name = name
    }
}
