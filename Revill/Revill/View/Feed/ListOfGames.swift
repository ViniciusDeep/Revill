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
            }.background(Color.purple).accentColor(Color.purple)
    }
}

struct ListOfGames_Previews: PreviewProvider {
    static var previews: some View {
        ListOfGames()
    }
}
