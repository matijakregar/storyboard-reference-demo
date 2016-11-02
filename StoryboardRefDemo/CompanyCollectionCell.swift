//
//  CompanyCollectionCell.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

class CompanyCollectionCell: UICollectionViewCell {
    @IBOutlet private weak var logoView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    func set(name: String!, logoURL: URL?) {
        nameLabel.text = name
        if let logoURL = logoURL {
            logoView.imageFromURL(logoURL)
        }
    }
}
