//
//  Dog.swift
//  CeldaPersonalizadaDAM2T1
//
//  Created by DAM on 01/02/2019.
//  Copyright © 2019 DAM. All rights reserved.
//

import Foundation
import UIKit

class Dog {
    var id:Int
    var name:String
    var section:String
    var country:String
    var image:UIImage = UIImage()
    var isLiked:Bool
    
    init(id:Int,
         name:String,
         section:String,
        country:String,
         image:UIImage
        ) {
        self.id = id
        self.name = name
        self.section = section
        self.country = country
        self.image = image
        self.isLiked = false
    }
    
    
}
