//
//  ContentView.swift
//  Revill
//
//  Created by Vinicius Mangueira on 30/09/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import SwiftUI
/// Component at all Content View, here you put your custom components
struct ContentView: View {
    var body: some View {
        VStack {
            SearchView()
            CategoriesView()
            HighlightedCardView()
            ListOfGames()
        }.padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
