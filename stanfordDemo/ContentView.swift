//
//  ContentView.swift
//  stanfordDemo
//
//  Created by Rezka Yuspi on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Cardview(isFaceUp: true)
            Cardview(isFaceUp: true)
            Cardview(isFaceUp: true)
            Cardview(isFaceUp: false)
        }
        .padding()
        .foregroundColor(.pink)
    }
}

struct Cardview: View{
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 4)
                    .foregroundColor(.pink)
                Text("👀").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
