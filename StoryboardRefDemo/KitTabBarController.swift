//
//  KitTabBarController.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 03/11/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit
import StoryboardRefDemoKit

class KitTabBarController: UITabBarController {

    let tabBarItems = [(title: "Partners", image: UIImage(named: "first")), (title: "Clients", image: UIImage(named: "second"))]
    let viewModels = [PartnersViewModel(numPartners: 10), ClientsViewModel(numClients: 60)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let viewControllers = viewControllers as? [KitCompaniesTableViewController]{
            for (i, collectionController) in viewControllers.enumerated() {
                collectionController.title = tabBarItems[i].title
                collectionController.tabBarItem.image = tabBarItems[i].image
                collectionController.companies = viewModels[i].companies
            }
        }
        
    }


}
