//
//  ContentView.swift
//  SwiftUI T33
//
//  Created by M Fadli Zein on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var color = Color.blue
    @State var color2 = Color.purple
    
    var body: some View {
        VStack {
            ColorPicker("Pick Color", selection: $color, supportsOpacity: true)
            ColorPicker("Pick Color 2", selection: $color2)
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors: [color, color2]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
