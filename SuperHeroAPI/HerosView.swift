//
//  HerosView.swift
//  SuperHeroAPI
//
//  Created by David Laczkovits on 13.10.23.
//

import SwiftUI

struct HerosView: View {
    
    @ObservedObject var fetchcontroller = FetchController()
    
    var body: some View {
        
        
        
        NavigationStack {
                switch fetchcontroller.status {
                case .finished:
                    List(fetchcontroller.superheros, id: \.id) { hero in
                        NavigationLink(destination: SuperheroView(superhero: hero)) {
                            HStack {
                                AsyncImage(url: URL(string: hero.images.xs))
                                Text(hero.name)
                            }
                        }
                    }
                    .navigationTitle("Superheros")
                default:
                    ProgressView()
                }
            }
            .task {
                fetchcontroller.getAllHeros()
            }
        
        
    }
}

#Preview {
    HerosView()
}
