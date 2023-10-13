//
//  ContentView.swift
//  SuperHeroAPI
//
//  Created by David Laczkovits on 10.10.23.
//

import SwiftUI

struct SuperheroView: View {
    
    @State var superhero : SuperheroModel

    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: superhero.images.lg))
            
            ScrollView {
                VStack {
                    VStack {
                        Text("Name: \(superhero.name)")
                    }
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    VStack {
                        Text("Slug: \(superhero.slug)")
                        HStack {
                            Text("Aliases: ")
                            ForEach(superhero.biography.aliases, id: \.self) { alias in
                                Text(alias)
                                    .padding(.bottom, 5)
                            }
                        }
                        Text("First Appearance: \(superhero.biography.firstAppearance)")
                            .padding(.bottom, 5)
                        Text("Alter Egos: \(superhero.biography.alterEgos)")
                            .padding(.bottom, 5)
                        Text("Gender: \(superhero.appearance.gender)")
                            .padding(.bottom, 5)
                        Text("Height: \(superhero.appearance.height[1])")
                            .padding(.bottom, 5)
                        Text("Weight: \(superhero.appearance.weight[1])")
                            .padding(.bottom, 5)
                        Text("Eyecolor: \(superhero.appearance.eyeColor)")
                            .padding(.bottom, 5)
                        Text("Haircolor: \(superhero.appearance.hairColor)")
                            .padding(.bottom, 5)
                        Text("Haircolor: \(superhero.appearance.hairColor)")
                            .padding(.bottom, 5)
                        Text("Intelligence: \(superhero.powerstats.intelligence)")
                            .padding(.bottom, 5)
                        Text("Durability: \(superhero.powerstats.durability)")
                            .padding(.bottom, 5)
                        Text("Speed: \(superhero.powerstats.speed)")
                            .padding(.bottom, 5)
                        Text("Combat: \(superhero.powerstats.combat)")
                            .padding(.bottom, 5)
                        Text("Power: \(superhero.powerstats.power)")
                            .padding(.bottom, 5)
                        Text("Strength: \(superhero.powerstats.strength)")
                            .padding(.bottom, 5)
                        Text("Group Affiliation: \(superhero.connections.groupAffiliation)")
                            .padding(.bottom, 5)
                        Text("Relatives: \(superhero.connections.relatives)")
                            .padding(.bottom, 5)
                        Text("Base Work: \(superhero.work.base)")
                            .padding(.bottom, 5)
                        Text("Occupation: \(superhero.work.occupation)")
                    }
                    .font(.title3)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height * 0.95)
                    .padding(.bottom, 20)
                }
            }
            
            
            
            
        }
        .background(.black)
    }
}

/*#Preview {
    SuperheroView(superhero:)
}*/
