//
//  ReadCitiesFile.swift
//  Read_File_Plist
//
//  Created by Son on 10/11/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import Foundation

typealias JSON = Dictionary<String,Any>

func readFilePlist(newArray: [CityStruct]) -> [CityStruct] {
    if let pathFile = Bundle.main.path(forResource: "Cities", ofType: "plist") {
        if let dict = NSDictionary(contentsOfFile: pathFile) as? JSON {
            // Use your myDict here
            if let cities =  dict["Cities"] as? [JSON] {
                for city in cities {
                    newArray.append(CityStruct(code: city["CityCode"] as? Int, name: city["Name"] as? String))
                }
            }
        }
    }
    return newArray
}
