//
//  ViewController.swift
//  DeleteTableViewCells
//
//  Created by MAC on 5/1/19.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var products:[Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pro1 = Product()
        pro1.name = "STARTERS"
        pro1.id = 1
        products.append(pro1)
        
        let pro2 = Product()
        pro2.name = "BURGERS"
        pro2.id = 2
        products.append(pro2)
        
        let pro3 = Product()
        pro3.name = "MEXICAN FOOD"
        pro3.id = 3
        products.append(pro3)
        
        let pro4 = Product()
        pro4.name = "SANDWICHES"
        pro4.id = 4
        products.append(pro4)
        
        let pro5 = Product()
        pro5.name = "PASTAS"
        pro5.id = 5
        products.append(pro5)
        
        let pro6 = Product()
        pro6.name = "MAIN MEALS"
        pro6.id = 6
        products.append(pro6)
        
        let pro7 = Product()
        pro7.name = "PIZZA"
        pro7.id = 7
        products.append(pro7)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductTableViewCell
        cell.labelTitle.text = self.products[indexPath.row].name
        cell.imageViewCell.image = UIImage(named: String(self.products[indexPath.row].id) + ".jpg")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            self.products.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = self.products[indexPath.row]
        print(product.name)
    }
    
    class Product {
        var id:Int = 0
        var name:String = ""
    }
    
}

