//
//  MenuItem.swift
//  Simple Menu App
//
//  Created by Micah Aldrich on 9/23/23.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}
