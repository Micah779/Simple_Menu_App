//
//  MenuListRow.swift
//  Simple Menu App
//
//  Created by Micah Aldrich on 9/23/23.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            Text(item.name)
                .fontWeight(.bold)
            
            Spacer()
            Text("$" + item.price)
        }.listRowSeparator(.hidden)
            .listRowBackground(Color(.brown)
                .opacity(0.1))
        }
    }

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item: MenuItem(name: "test item", price: "2.90", imageName: "onigiri"))
    }
}
