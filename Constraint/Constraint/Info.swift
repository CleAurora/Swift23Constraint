//
//  Info.swift
//  Constraint
//
//  Created by Otavio Brito on 23/10/20.
//

import Foundation

class Information {
    var image: String
    var title: String
    var rate: String
    var description: String
    
    init(image: String, title: String, rate: String, description: String) {
        self.description = description
        self.image = image
        self.rate = rate
        self.title = title
    }
}

