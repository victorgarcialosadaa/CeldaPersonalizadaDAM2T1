//
//  TableViewCellCustom.swift
//  CeldaPersonalizadaDAM2T1
//
//  Created by DAM on 16/01/2019.
//  Copyright © 2019 DAM. All rights reserved.
//

import UIKit

class TableViewCellCustom: UITableViewCell {

    @IBOutlet weak var imgProduct: UIImageView!
    @IBOutlet weak var categoryCloth: UILabel!
    @IBOutlet weak var nameCloth: UILabel!
    
    @IBOutlet weak var isLiked: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    
    
   
}
