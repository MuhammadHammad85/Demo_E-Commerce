//
//  CateogoryListTableViewCell.swift
//  Demo E-commerce
//
//  Created by Hammad Baig on 31/05/2021.
//

import UIKit

class CateogoryListTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    func configureCell(category : Category ) {
        img.image = category.img
        lbl.text = category.title
    }

}
