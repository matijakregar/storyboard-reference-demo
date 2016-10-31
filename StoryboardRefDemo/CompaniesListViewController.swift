//
//  CompaniesListViewControllerTableViewController.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

class CompaniesListViewController: UITableViewController {
    
    var companiesViewModel = CompaniesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(CompanyListCell.self, forCellReuseIdentifier: "CompanyListCell")
        tableView.register(UINib(nibName: "CompanyListCell", bundle: Bundle.main), forCellReuseIdentifier: "CompanyListCell")
        
        tableView.rowHeight = 60.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companiesViewModel.companies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyListCell", for: indexPath) as! CompanyListCell

        let comp = companiesViewModel.companies[indexPath.row]
        
        cell.set(name: comp.name, logoURL: comp.logoURL)

        return cell
    }
        
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let detailViewController = segue.destination as? CompanyDetailViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            detailViewController.company = companiesViewModel.companies[indexPath.row]
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDetail", sender: self)
    }

}
