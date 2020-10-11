//
//  HighlightedCardView.swift
//  Revill
//
//  Created by Vinicius Mangueira on 30/09/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import SwiftUI
/// HighlightedCardView, center Card
struct HighlightedCardView: View {
    var body: some View {
        Image("highPlaceHolder").resizable().scaledToFit().frame(height: 400).clipped()
    }
}

struct HighlightedCardView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightedCardView()
    }
}
