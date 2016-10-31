//
//  ClientsListViewController.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

class ClientsListViewController: CompaniesListViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        companiesViewModel = ClientsViewModel(numClients: 60)
    }

}