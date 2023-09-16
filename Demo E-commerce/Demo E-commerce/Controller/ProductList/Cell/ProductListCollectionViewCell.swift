//
//  ProductListCollectionViewCell.swift
//  Demo E-commerce
//
//  Created by Hammad Baig on 03/06/2021.
//

import UIKit

class ProductListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var img : UIImageView!
    @IBOutlet weak var name : UILabel!
    @IBOutlet weak var price : UILabel!

    func configureCell(prod: Product){
        img.image = prod.img
        name.text = prod.name
        price.text = prod.price
    }
}
