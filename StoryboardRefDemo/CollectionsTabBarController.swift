//
//  CollectionsTabBarController.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 02/11/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

class CollectionsTabBarController: UITabBarController {
    
    let tabBarItems = [(title: "Partners", image: UIImage(named: "first")), (title: "Clients", image: UIImage(named: "second"))]
    let viewModels = [PartnersViewModel(numPartners: 10), ClientsViewModel(numClients: 60)]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let viewControllers = viewControllers as? [CompaniesCollectionController]{
            for (i, collectionController) in viewControllers.enumerated() {
                collectionController.title = tabBarItems[i].title
                collectionController.tabBarItem.image = tabBarItems[i].image
                collectionController.companiesViewModel = viewModels[i]
            }
        }
        
    }

}
