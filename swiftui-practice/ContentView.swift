//
//  ContentView.swift
//  swiftui-practice
//
//  Created by bagasstb on 28/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10, content: {
            Image("apple-watch-example")
                .frame(width: 300, height: 300, alignment: .center)
                .scaledToFit()
                .clipped()
                .clipShape(Circle())
                .shadow(radius: 20)
            Text("Hello, SwiftUI!")
                .font(.headline)
                .foregroundColor(.green)
            HStack(alignment: .firstTextBaseline, spacing: 5, content: {
                Text("Home,")
                    .font(.subheadline)
                    .foregroundColor(.green)
                Text("28 Nov 2020")
                    .font(.subheadline)
                    .foregroundColor(.green)
            })
        }).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
