//
//  PartnersViewController.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

class PartnersListViewController: CompaniesListViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        companiesViewModel = PartnersViewModel(numPartners: 12)
    }

}
