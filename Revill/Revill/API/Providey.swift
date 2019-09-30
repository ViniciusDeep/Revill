//
//  Providey.swift
//  Revill
//
//  Created by Vinicius Mangueira on 30/09/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import Combine
import SwiftUI
/// Layer of service is here
class Providey<T: Decodable>: ObservableObject {
    
    var didChange = PassthroughSubject<Providey, Never>()
    
    var elements = [T]() {
        didSet {
           // didChange(self)
        }
    }
    
    init() {
           
    }
}
