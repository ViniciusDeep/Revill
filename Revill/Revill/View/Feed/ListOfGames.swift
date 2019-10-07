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
        List {
            RowGames()
            RowGames()
            RowGames()
            RowGames()
            }.background(Color.purple).offset(x: 0, y: -10)
    }
}

struct ListOfGames_Previews: PreviewProvider {
    static var previews: some View {
        ListOfGames()
    }
}
