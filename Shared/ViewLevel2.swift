//
//  ViewLevel2.swift
//  SwiftUI-SplitViewNavDemo (iOS)
//
//  Created by Russell Archer on 01/06/2021.
//

import SwiftUI

struct ViewLevel2: View {
    
    var linkText = "2"
    var color: Color = .black
    
    var body: some View {
        VStack {
            Text("ViewLevel2")
                .font(.largeTitle)
                .padding()
            
            Text("Text: \(linkText)")
                .font(.title)
                .foregroundColor(color)
        }
    }
}

struct ViewLevel2_Previews: PreviewProvider {
    static var previews: some View {
        ViewLevel2()
    }
}
