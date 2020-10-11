//
//  CategoriesView.swift
//  Revill
//
//  Created by aluno on 30/09/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import SwiftUI

/// List of categories Available
struct CategoriesView: View {
    @State private var selected: Int = 0 // Selected button on the menu bar
    
    let categories: [Categories] = Categories.allCases // Array with all categories
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(self.categories, id: \.self) { category in // Displays each category on the menu bar
                    CategoryButton(selection: self.$selected, category: category)
                        .padding(.trailing, 10)
                }
            }
            .padding(.leading)
        }
    }
}

/// View of the category buttons
struct CategoryButton: View {
    @Binding var selection: Int // Selected menu button binding
    
    let category: Categories // Category of the button
    var selected: Bool {
        return selection == category.index // Checks if this button is the selected one
    }
    
    // Layout variables
    let color: Color = Color.purple
    let cornerRadius: CGFloat = 16
    let borderWidth: CGFloat = 2
    let shadowOpacity: Double = 0.25
    
    var body: some View {
        Button(action: {
            self.selection = self.category.index // Updates the selected button when tapped
        }, label: {
            Text(self.category.rawValue)
                .shadow(color: Color.black.opacity(self.selected ? 0 : shadowOpacity), radius: 4, x: 0, y: 4) // Text shadow (if selected, doesnt appear)
                .padding(.vertical, 10)
                .padding(.horizontal, cornerRadius)
                .background(color)
                .cornerRadius(cornerRadius)
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius) // Overlay to display round border
                        .stroke(Color.white, lineWidth: self.selected ? borderWidth : 0) // Border (only appears if selected)
                )
                .shadow(color: Color.black.opacity(self.selected ? shadowOpacity : 0), radius: 4, x: 0, y: 4) // Background shadow (only appears if selected)
        })
        .padding(.vertical)
    }
}

/// Mocked dates dates come to API
enum Categories: String, CaseIterable {
    case upComing = "UPComing"
    case topList = "Top List"
    case adventure = "Adventure"
    case tripleA = "AAA"
}

/// Extension to be able to get the index of a Categories
extension CaseIterable where Self: Equatable {
    var index: Self.AllCases.Index {
        return Self.allCases.firstIndex { self == $0 } ?? Self.allCases.endIndex
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
