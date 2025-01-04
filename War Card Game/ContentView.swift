//
//  ContentView.swift
//  War Card Game
//
//  Created by Jessinta Andrew on 2025-01-03.
//

import SwiftUI

struct ContentView: View {
    let cards : [Int] = [2,3,4,5,6,7,8,9,10,11,12,13]
    
    @State private var playerCard: Int = 1
    @State private var cpuCard: Int = 1
    @State private var playerScore: Int = 0
    @State private var cpuScore: Int = 0
    
    
    func deal(){
        playerCard = cards.randomElement() ?? 2
        cpuCard = cards.randomElement() ?? 2
        
        if playerCard > cpuCard {
                    playerScore += 1
                }
        else if cpuCard > playerCard {
                    cpuScore += 1
                }
        
    }
    
    
    var body: some View {
        ZStack{
            
            Image("background-plain").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card\(playerCard)")
                    Spacer()
                    Image("card\(cpuCard)")
                    Spacer()
                    
                }
                Spacer()
                
//                Image("button")
//                Button("Deal"){
//                    deal()
//                }.foregroundColor(.white)
                Button {
                deal()
                } label: {
                Image("button")
                }

             
                Spacer()
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .fontWeight(.regular)
                            .padding(.bottom, 25.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .fontWeight(.regular).padding(.bottom, 25.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                }.foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
