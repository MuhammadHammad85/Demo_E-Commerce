//
//  CateogoryListVC.swift
//  Demo E-commerce
//
//  Created by Hammad Baig on 31/05/2021.
//

import UIKit

class CateogoryListVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews(){
        self.navigationController?.navigationBar.isHidden = true
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
//MARK: - Navigation
extension CateogoryListVC {
    
    private func navigateToDetail(cat: Category){
        let vc = StoryBoard.main.instantiateViewController(identifier: "ProductListVC") as! ProductListVC
        vc.category = cat
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

//MARK: - UITableViewDelegate, UITableViewDataSource
extension CateogoryListVC : UITableViewDelegate, UITableViewDataSource {
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instances.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CateogoryListTableViewCell", for: indexPath)as? CateogoryListTableViewCell else{return UITableViewCell()}
        let category = DataServices.instances.getCategories()[indexPath.row]
        cell.configureCell(category: category)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cat = DataServices.instances.getCategories()[indexPath.row]
        navigateToDetail(cat: cat)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
