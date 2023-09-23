//
//  ContentView.swift
//  Simple Menu App
//
//  Created by Micah Aldrich on 9/23/23.
//

import SwiftUI

struct MenuView: View {
    
    @State var MenuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        
        List(MenuItems) { item in
            
            MenuListRow(item: item)
            
        }
        .listStyle(.plain)
            .onAppear {
                // Call for the data
                MenuItems = dataService.getData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
