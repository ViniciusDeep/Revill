//
//  CategoriesView.swift
//  Revill
//
//  Created by aluno on 30/09/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import SwiftUI
/// List of categories Avaiable
struct CategoriesView: View {
    
    var body: some View {
        Text("")
    }
}

/// Mocked dates dates come to API
enum Categories:String, CaseIterable {
    case upComing = "UPComing"
    case topList = "Top List"
    case adventure = "Adventure"
}
