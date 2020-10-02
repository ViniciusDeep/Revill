//
//  Providey.swift
//  Revill
//
//  Created by Vinicius Mangueira on 30/09/19.
//  Copyright © 2019 Revill. All rights reserved.
//

import Combine
import SwiftUI

class Providey<T: Decodable>: ObservableObject {    
     func get(withUrl url: String, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = URL(string: url) else {return print("Bug")}
        URLSession.shared.dataTask(with: url) { (data, _ , error) in
            if let err = error {completion(.failure(err))}
            
            guard let data = data else {return}
            
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                DispatchQueue.main.async {
                    completion(.success(result))
                }
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
