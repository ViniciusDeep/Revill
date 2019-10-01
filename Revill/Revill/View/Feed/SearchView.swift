//
//  SearchView.swift
//  Revill
//
//  Created by Vinicius Mangueira on 30/09/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import SwiftUI
/// Component at Search
struct SearchView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                    Text("Welcome").font(.title)
                    Text("To your daily of games").font(.largeTitle)
                }
            }.background(Color(.red)).cornerRadius(8)
    }
}
