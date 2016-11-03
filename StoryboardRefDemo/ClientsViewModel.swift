//
//  ClientsViewModel.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import Foundation

class ClientsViewModel: CompaniesViewModel {
    
    init(numClients: UInt) {
        super.init()
        self.companies = [CompanyObj]()
        for _ in 0..<numClients {
            companies.append(CompanyObj())
        }
    }
}
