//
//  Company.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import Foundation
import StoryboardRefDemoKit
import Fakery

struct CompanyObj: StoryboardRefDemoKit.Company {
    var name: String
    var catchPhrase: String
    var bs: String
    var logoURL: URL?
    
    init() {
        let faker = Faker()
        
        self.name = faker.company.name()
        self.catchPhrase = faker.company.catchPhrase()
        self.bs = faker.company.bs()
        self.logoURL = URL(string: faker.company.logo())
    }
}
