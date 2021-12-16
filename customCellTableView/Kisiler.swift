//
//  Kisiler.swift
//  customCellTableView
//
//  Created by Berat Yavuz on 15.12.2021.
//

import Foundation
class Kisiler{
var kisiId:Int?
    var kisiAd:String?
    var kisiTel:String?
    
    init() {
        
    }
    init(kisiId:Int,kisiAd:String,kisiTel:String) {
        self.kisiAd = kisiAd
        self.kisiId = kisiId
        self.kisiTel = kisiTel
    }
    
}
