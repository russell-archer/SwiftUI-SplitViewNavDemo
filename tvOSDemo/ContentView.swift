//
//  ContentView.swift
//  tvOSDemo
//
//  Created by Russell Archer on 01/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [Color] = [.red, .green, .blue, .yellow, .purple]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1...5, id: \.self) { val in
                    NavigationLink(destination: ViewLevel2(linkText: String(val), color: colors[val-1])) {
                        Text("Link\(val)")
                            .font(.largeTitle)
                            .foregroundColor(colors[val-1])
                            .padding()
                    }
                }
            }
        }
//        .navigationViewStyle(StackNavigationViewStyle())         // "Single View"
//        .navigationViewStyle(DoubleColumnNavigationViewStyle())  // "Split View"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
