//
//  Providey.swift
//  Revill
//
//  Created by Vinicius Mangueira on 30/09/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import Combine
import SwiftUI
import Foundation


/// Layer of service is here
class Providey<T: Decodable>: ObservableObject {
    
    let didChange = PassthroughSubject<Providey, Never>()
    
    var elements = [T]() {
        didSet {
            didChange.send(self)
        }
    }
    
     func get(withUrl url: String, completion: @escaping (Result<T, Error>) -> ()) {
        
    }
}
    
    
  

