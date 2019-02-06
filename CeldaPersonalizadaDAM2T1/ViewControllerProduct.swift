//
//  ViewControllerProduct.swift
//  CeldaPersonalizadaDAM2T1
//
//  Created by DAM on 16/01/2019.
//  Copyright © 2019 DAM. All rights reserved.
//

import UIKit

class ViewControllerProduct: UIViewController {

    
    /*Se recargan con la informacion que recibo en las variables de la clase TableView*/
    @IBOutlet weak var imgProduct: UIImageView!
    
    @IBOutlet weak var nameProduct: UILabel!
    
    @IBOutlet weak var categoryProduct: UILabel!
    
    
    /*Variables que se rellenan desde el Tableview*/
    var nameCloth:String = ""
    var categoryCloth:String = ""
    var imgCloth:UIImage = UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameProduct.text = nameCloth
        categoryProduct.text = categoryCloth
        imgProduct.image = imgCloth
        
        
    }
    

}
