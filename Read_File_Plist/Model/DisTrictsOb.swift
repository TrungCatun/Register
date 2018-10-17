//
//  DisTrictsOb.swift
//  Read_File_Plist
//
//  Created by Son on 10/11/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import Foundation

class districtOb {
    var cityCode: Int?
    var districCode: Int?
    var name: String?
    
    init(cityCode: Int?, districCode: Int?, name: String?) {
        self.cityCode = cityCode
        self.districCode = districCode
        self.name = name
    }
}
