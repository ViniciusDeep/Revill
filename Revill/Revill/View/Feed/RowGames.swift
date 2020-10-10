//
//  RowGames.swift
//  Revill
//
//  Created by Vinicius Mangueira on 02/10/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import SwiftUI

struct RowGames: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("highPlaceHolder")
                    .resizable()
                    .frame(width: 77 ,height: 77)
                    .cornerRadius(8)
                    .padding(10)
                
                VStack(alignment: .leading) {
                    Text("The last of Us")
                        .foregroundColor(Color.black)
                        .font(.headline)
                    Text("Survivor")
                        .foregroundColor(Color.gray)
                        .font(.subheadline)
                }
                .padding(10)
                
                Spacer()
            }
            .background(Color.white)
            .cornerRadius(16)
        }
        .listRowBackground(Color.purple)
        .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .shadow(color: Color.black, radius: 2, x: 0, y: 2)
    }
}

struct RowGames_Previews: PreviewProvider {
    static var previews: some View {
        RowGames()
    }
}
