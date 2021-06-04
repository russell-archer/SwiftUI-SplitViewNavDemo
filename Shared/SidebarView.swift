//
//  SidebarView.swift
//  SwiftUI-SplitViewNavDemo (iOS)
//
//  Created by Russell Archer on 02/06/2021.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("What's New")) {
                    Label("What's New", systemImage: "wand.and.stars")
                }
                
                NavigationLink(destination: TabbedPageView()) {
                    Label("Messages", systemImage: "message")
                }
                
                NavigationLink(destination: ListView()) {
                    Label("List", systemImage: "list.bullet.rectangle")
                }

                Section(header: Text("Personal")) {
                    Label("Settings", systemImage: "gearshape")
                    Label("Account", systemImage: "person.crop.circle")
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("My Sidebar")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
