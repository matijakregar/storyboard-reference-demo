//
//  PartnersViewModel.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import Foundation

// A subclass of the CompaniesViewModel that implements a specific initializer.

class PartnersViewModel: CompaniesViewModel {
    
    init(numPartners: UInt) {
        super.init()
        self.companies = [CompanyObj]()
        for _ in 0..<numPartners {
            companies.append(CompanyObj())
        }
    }
}
