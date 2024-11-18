//
//  ContentView.swift
//  DiceView
//
//  Created by 宇野緋奈乃 on 2024/11/16.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            
            Text("サイコロ転がし")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
                
                HStack {
                    Button("Remove Dice", systemImage: "minus.circle.fill") {
                        withAnimation {
                            numberOfDice -= 1
                        }
                    }
                    .disabled(numberOfDice == 1)
                    
                    Button("Add Dice", systemImage: "plus.circle.fill") {
                        withAnimation {
                            numberOfDice += 1
                        }
                    }
                    .disabled(numberOfDice == 3)
                    
                }
                .padding()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.appBackground)
            .labelStyle(.iconOnly)
            .font(.title)
            .tint(.white)
        }
    }

#Preview {
    ContentView()
}
