//
//  FetchController.swift
//  SuperHeroAPI
//
//  Created by David Laczkovits on 10.10.23.
//

import Foundation
import SwiftUI

enum Status {
    case notStarted
    case fetching
    case finished
}

@MainActor
class FetchController : ObservableObject {
    
    @Published var superheros = [SuperheroModel]()
    
    @Published var currentSuperhero : SuperheroModel?
    
    @Published var status : Status = .notStarted
    
    func getAllHeros() {
        status = .fetching
        var heroData = [SuperheroModel]()
        guard let url = URL(string: "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            let _ = String(data:data, encoding: .utf8)
            do {
                let decoder = JSONDecoder()
                let hData = try decoder.decode([SuperheroModel].self, from: data)
                self.superheros = hData
            } catch let err {
                print("Err", err)
                return
            }
        }.resume()
        
        status = .finished
        
    }
    
// https://superheroapi.com/api/10232361121309955/id
    func getHeroById(id: Int) {
        status = .fetching
        var heroData : SuperheroModel?
        guard let url = URL(string: "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/id/1.json") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            let _ = String(data:data, encoding: .utf8)
            do {
                let decoder = JSONDecoder()
                let hData = try decoder.decode(SuperheroModel.self, from: data)
                heroData = hData
                print("Hero: \(heroData!.name)")
            } catch let err {
                print("Err", err)
                self.status = .finished
                return
            }
        }.resume()
        
        status = .finished
        currentSuperhero = heroData
    }
    
}
