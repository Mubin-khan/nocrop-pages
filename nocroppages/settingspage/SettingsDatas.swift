//
//  SettingsDatas.swift
//  nocroppages
//
//  Created by Mubin Khan on 3/8/23.
//

import Foundation

struct datasStruct {
    var title : String
    var imageName : String
}

struct sectionWise {
    var currentSection : Int
    var sectiontitle : String
    var datas : [datasStruct]
}

class SettingDatas {
    static let shared = SettingDatas()
    
    let datas : [sectionWise] = [
        sectionWise(currentSection: 0, sectiontitle: "purchase", datas: [
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star")
        ]),
        sectionWise(currentSection: 1, sectiontitle: "Export", datas: [
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star")
        ]),
        sectionWise(currentSection: 2, sectiontitle: "help us", datas: [
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star")
        ]),
        sectionWise(currentSection: 3, sectiontitle: "support", datas: [
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star")
        ]),
        sectionWise(currentSection: 4, sectiontitle: "about", datas: [
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star"),
            datasStruct(title: "No Crop pro", imageName: "star")
        ])
    ]
    
    private init (){}
}
