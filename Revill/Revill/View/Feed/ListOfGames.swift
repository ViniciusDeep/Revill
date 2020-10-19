//
//  ListOfGames.swift
//  Revill
//
//  Created by aluno on 30/09/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import SwiftUI

struct ListOfGames: View {
    var body: some View {
        Group {
            RowGames()
            RowGames()
            RowGames()
            RowGames()
        }
        .padding(.horizontal, 10)
        .padding(.top, 5)
        .background(Color.purple).offset(x: 0, y: -10)
        
    }
}

struct ListOfGames_Previews: PreviewProvider {
    static var previews: some View {
        ListOfGames()
    }
}
