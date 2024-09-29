//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Beyza Nur Tekerek on 29.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                AsyncImage(url: URL(string: "https://cdn.sanity.io/images/tlr8oxjg/production/e91a4659d80f9de0294d1fc4d9c78b23a4e93146-1456x816.png?w=3840&q=100&fit=clip&auto=format")!) { image in
                    image.resizable().frame(width: 300, height:200, alignment: .center)
                } placeholder: {
                    // görsel indirilene kadar ne gösterilsin
                    ProgressView()
                }
                
                List(superHeroArray) {superhero in
                    Text(superhero.name)
                        .font(.title3)
                        .foregroundColor(.brown)
                }
            }
            .navigationTitle("Superhero Book")
        }
    }
}

#Preview {
    ContentView()
}
