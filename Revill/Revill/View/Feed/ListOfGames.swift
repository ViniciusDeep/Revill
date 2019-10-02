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
            VStack {
              HStack {
                Image("highPlaceHolder").resizable().frame(width: 100 ,height: 100)
                VStack {
                    Text("The last of Us")
                    Text("Survivor")
                }
              }
            }
        }
    }
}

struct ListOfGames_Previews: PreviewProvider {
    static var previews: some View {
        ListOfGames()
    }
}
