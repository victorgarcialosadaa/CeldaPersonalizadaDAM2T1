//
//  roPA.swift
//  CeldaPersonalizadaDAM2T1
//
//  Created by DAM on 16/01/2019.
//  Copyright © 2019 DAM. All rights reserved.
//

import Foundation
import UIKit

class Ropa {
    var nameCloth:String
    var categoryCloth:String
    var imgProduct:UIImage = UIImage()
    var isLiked:Bool = false
    
    init(nameCloth:String, categoryCloth:String, imgProduct:UIImage) {
        self.nameCloth = nameCloth
        self.categoryCloth = categoryCloth
        self.imgProduct = imgProduct
    }
    
    
}
