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
                Spacer()
                Text("Welcome").font(.custom("Nunito-Regular", size: 24))
                Text("To your daily of games").font(.custom("Nunito-Black", size: 24)).fontWeight(.black)
                Spacer().frame(height: 16)
                SearchField()
            }
            
        }
        .frame(height: 202)
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .padding(.bottom, 32)
        .background(Color(.white))
        .cornerRadius(32)
        .clipped()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
