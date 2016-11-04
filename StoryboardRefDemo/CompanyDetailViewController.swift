//
//  FirstViewController.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

// A view controller that presents a single company details.

class CompanyDetailViewController: UIViewController {
    
    @IBOutlet private weak var logoView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var catchPhraseLabel: UILabel!
    @IBOutlet private weak var bsLabel: UILabel!
    
    var company: CompanyObj? {
        didSet {
            if let company = company,
                logoView != nil {
                displayCompany(company)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let company = company {
            displayCompany(company)
        }
    }
    
    private func displayCompany(_ company: CompanyObj) {
        nameLabel.text = company.name
        catchPhraseLabel.text = company.catchPhrase
        bsLabel.text = company.bs
        
        if let logoURL = company.logoURL {
            logoView.imageFromURL(logoURL)
        }
    }

}

