//
//  CompaniesCollectionController.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 02/11/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

// A collection controller that displays companies from the view model.

private let reuseIdentifier = "CompanyCollectionCell"

class CompaniesCollectionController: UICollectionViewController {
    
    var companiesViewModel = CompaniesViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let companyDetailViewController = segue.destination as? CompanyDetailViewController,
            let indexPath = collectionView?.indexPathsForSelectedItems?.first {
            companyDetailViewController.company = companiesViewModel.companies[indexPath.row]
        }
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return companiesViewModel.companies.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CompanyCollectionCell
        
        let comp = companiesViewModel.companies[indexPath.row]
        
        cell.set(name: comp.name, logoURL: comp.logoURL)
        
        return cell
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension CompaniesCollectionController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = floor((collectionView.frame.size.width - 2) / 3)
        return CGSize(width: cellSize, height: cellSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 49, right: 0)
    }
    
}
