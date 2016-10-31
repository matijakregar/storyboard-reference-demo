//
//  FirstViewController.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

class CompanyDetailViewController: UIViewController {
    
    @IBOutlet private weak var logoView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var catchPhraseLabel: UILabel!
    @IBOutlet private weak var bsLabel: UILabel!
    
    var company: Company? {
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
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func displayCompany(_ company: Company) {
        nameLabel.text = company.name
        catchPhraseLabel.text = company.catchPhrase
        bsLabel.text = company.bs
        
        if let logoURL = company.logoURL {
            logoView.imageFromURL(logoURL)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

