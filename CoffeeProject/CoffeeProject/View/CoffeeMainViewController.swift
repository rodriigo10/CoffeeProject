//
//  ViewController.swift
//  CoffeeProject
//
//  Created by Rodrigo Garcia on 25/04/1401 AP.
//

import UIKit
import Alamofire


class CoffeeMainViewController: UIViewController {

    let viewModel = CoffeeMainViewModel()
    
    @IBOutlet weak var coffeeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        callRequest()
        
    }
    
    func setupTableView() {
    
        coffeeTableView.delegate = self
        coffeeTableView.dataSource = self
        coffeeTableView.register(UINib(nibName: "TableViewCellCoffeeItens", bundle: nil), forCellReuseIdentifier: "cell")
        coffeeTableView.separatorColor = .brown
    }
    
    func callRequest() {
        viewModel.getRequest { success in
            if success {
                self.coffeeTableView.reloadData()
            } else {
                print("Is Error")
            }
        }
    }
}

