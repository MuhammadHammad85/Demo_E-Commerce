//
//  ProductListVC.swift
//  Demo E-commerce
//
//  Created by Hammad Baig on 03/06/2021.
//

import UIKit

class ProductListVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var category : Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews(){
        collectionView.delegate = self
        collectionView.dataSource =  self
        navigationItem.title = category?.title ?? ""
    }
}
//MARK: -  UICollectionViewDelegate , UICollectionViewDataSource
extension ProductListVC : UICollectionViewDelegate , UICollectionViewDataSource {
 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataServices.instances.productOfCategory(categoryTitle: category?.title ?? "").count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductListCollectionViewCell", for: indexPath)as? ProductListCollectionViewCell else{ return UICollectionViewCell() }
        let product = DataServices.instances.productOfCategory(categoryTitle: category?.title ?? "")[indexPath.row]
        cell.configureCell(prod: product)
        cell.layer.cornerRadius = 12
        return cell
    }
}
