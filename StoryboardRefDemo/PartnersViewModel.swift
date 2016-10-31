//
//  PartnersViewModel.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import Foundation

class PartnersViewModel: CompaniesViewModel {
    
    init(numPartners: UInt) {
        super.init()
        self.companies = [Company]()
        for _ in 0..<numPartners {
            companies.append(Company())
        }
    }
}
