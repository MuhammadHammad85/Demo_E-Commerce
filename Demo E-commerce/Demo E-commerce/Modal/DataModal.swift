//
//  DataModal.swift
//  Demo E-commerce
//
//  Created by Hammad Baig on 03/06/2021.
//

import Foundation
import UIKit

struct Category {
    var title : String
    var img : UIImage
    
    init(title : String , img : UIImage) {
        self.title =  title
        self.img =  img
        
    }
    
}


struct Product {
    
    var img : UIImage
    var name : String
    var price : String
    
    
    init(img:UIImage,name : String, price : String) {
        self.img = img
        self.name = name
        self.price = price
        
    }
    
}



struct  DataServices {
   static let instances =  DataServices()
    
    private let categories = [
        Category(title: "HOODIES", img:#imageLiteral(resourceName: "hoodies")),
        Category(title: "SHIRTS", img:#imageLiteral(resourceName: "shirts")),
        Category(title: "HATS", img:#imageLiteral(resourceName: "hats")),
        Category(title: "DIGITAL", img:#imageLiteral(resourceName: "digital"))
    ]
    
    
    private let hoodies = [
        Product(img: #imageLiteral(resourceName: "hoodie01"), name: "Hoodie # 1", price: "$22"),
        Product(img: #imageLiteral(resourceName: "hoodie02"), name: "Hoodie # 2", price: "$32"),
        Product(img: #imageLiteral(resourceName: "hoodie03"), name: "Hoodie # 3", price: "$25"),
        Product(img: #imageLiteral(resourceName: "hoodie04"), name: "Hoodie # 4", price: "$40")
    ]
    private let hats = [
        Product(img: #imageLiteral(resourceName: "hat01"), name: "Hats # 1", price: "$22"),
        Product(img: #imageLiteral(resourceName: "hat02"), name: "Hats # 2", price: "$32"),
        Product(img: #imageLiteral(resourceName: "hat03"), name: "Hats # 3", price: "$25"),
        Product(img: #imageLiteral(resourceName: "hat04"), name: "Hats # 4", price: "$40")
    ]
    private let shirts = [
        Product(img: #imageLiteral(resourceName: "shirt01"), name: "Shirts # 1", price: "$22"),
        Product(img: #imageLiteral(resourceName: "shirt02"), name: "Shirts # 2", price: "$32"),
        Product(img: #imageLiteral(resourceName: "shirt03"), name: "Shirts # 3", price: "$25"),
        Product(img: #imageLiteral(resourceName: "shirt04"), name: "Shirts # 4", price: "$40"),
        Product(img: #imageLiteral(resourceName: "shirt05"), name: "Shirts # 5", price: "$35")
    ]
    
    private let digital = [Product]()
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func productOfCategory(categoryTitle title: String) -> [Product] {
        
        switch title {
        case "HOODIES":
           return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigital()
        default:
            return getHoodies()
        }
         
    }
    
    func  getShirts() -> [Product] {
        return shirts
    }
    
    func  getHoodies() -> [Product] {
        return hoodies
    }
    
    func  getHats() -> [Product] {
        return hats
    }
    
    func getDigital() -> [Product] {
        return digital
    }
    
}
