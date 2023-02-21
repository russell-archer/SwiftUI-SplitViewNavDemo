//
//  TabbedPageView.swift
//  SwiftUI-SplitViewNavDemo
//
//  Created by Russell Archer on 04/06/2021.
//

import SwiftUI

struct TabbedPageView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView {
            VStack {
                Text("Hello, world!").font(.largeTitle).padding()
                Image(systemName: "face.smiling.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.yellow)
                Spacer()
                
            }
            #if !os(tvOS)
            .onTapGesture { self.selectedTab = 0 }
            #endif
            .tabItem { Text("Tab1") }.tag(0)
//            .padding(.bottom, 50)  // Add some space so the end of the page isn't covered by the tabview content indicator

            Text("Hello, world2!")
            #if !os(tvOS)
            .onTapGesture { self.selectedTab = 1 }
            #endif
            .tabItem { Text("Tab2") }.tag(1)

            Text("Hello, world3!")
            #if !os(tvOS)
            .onTapGesture { self.selectedTab = 2 }
            #endif
            .tabItem { Text("Tab3") }.tag(2)

            Text("Hello, world4!")
            #if !os(tvOS)
            .onTapGesture { self.selectedTab = 3 }
            #endif
            .tabItem { Text("Tab4") }.tag(3)
        }
        .id(selectedTab)
        .tabViewStyle(.page)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .navigationTitle("Test Name")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.bottom, 5)  // Add space between the tabview "dots" content indicator and the system "swipe" bar
//        .ignoresSafeArea()
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { }, label: { Image(systemName: "checklist") })
            }
        }
    }
}

struct TabbedPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedPageView()
    }
}
