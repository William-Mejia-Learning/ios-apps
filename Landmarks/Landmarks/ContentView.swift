//
//  ContentView.swift
//  Landmarks
//
//  Created by William Mejia on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView()
                .ignoresSafeArea(edges:.top)
                .frame(height: 500)
            CircleImage()
                .offset(y: -50)
                .padding(.bottom, -50)
            
            VStack (alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title).foregroundColor(.cyan)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("This very large formation lies south of the large Real Hidden Valley parking lot and immediately adjacent to (south of) the picnic areas.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
