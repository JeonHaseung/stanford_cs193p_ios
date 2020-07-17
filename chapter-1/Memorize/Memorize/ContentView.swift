//
//  ContentView.swift
//  Memorize
//
//  Created by HASEUNG JEON on 2020/07/17.
//  Copyright © 2020 HASEUNG JEON. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
        
    }
}


struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
