//
//  ContentView.swift
//  Test
//
//  Created by Rohan Sachin on 25/05/23.
//

import SwiftUI

struct ContentView: View {
   @State private var colourChange = false
    @State private var sizeChange = false
    
    var body: some View{
        Image(systemName: "heart.fill")
            .font(.system(size: 200))
            .foregroundColor(colourChange ? .red : .black)
            .scaleEffect(sizeChange ? 1.5 : 1)
            .animation(.default)
            .onTapGesture {
                self.colourChange.toggle()
            }
            .onLongPressGesture {
                self.sizeChange.toggle()
            }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
