//
//  ContentView.swift
//  02. Magic-Ball-SUI
//
//  Created by Андрей Бородкин on 17.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    let numberOfBallsInTheArray = Range(1...5)
    
    @State var randomAnswer: Int?
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            VStack(spacing: 60) {
                Text("Ask me anything")
                    .font(.system(size: 30, weight: .bold)).foregroundColor(.white)
                
                Image("ball\(randomAnswer ?? 1)")
                    .animation(.easeOut)
                
                Button("Ask") {
                    self.randomAnswer = Int.random(in: numberOfBallsInTheArray)
                }
                .frame(width: 150, height: 50, alignment: .center).cornerRadius(8)
                .font(.system(size: 30, weight: .bold)).background(.white).foregroundColor(.cyan)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
