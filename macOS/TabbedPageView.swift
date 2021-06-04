//
//  TabbedPageView.swift
//  SwiftUI-SplitViewNavDemo
//
//  Created by Russell Archer on 04/06/2021.
//

import SwiftUI

struct TabbedPageView: View {
    
    var body: some View {
        TabView {
            VStack {
                Text("Hello, world!").font(.largeTitle).padding()
                Image(systemName: "face.smiling.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.yellow)
            }
            .tabItem { Text("Tab1") }

            Text("Hello, world2!")
            .tabItem { Text("Tab2") }

            Text("Hello, world3!")
            .tabItem { Text("Tab3") }

            Text("Hello, world4!")
            .tabItem { Text("Tab4") }
        }
    }
}

struct TabbedPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedPageView()
    }
}
