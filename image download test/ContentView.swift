//
//  ContentView.swift
//  image download test
//
//  Created by Vito Borghi on 11/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 100) {
                AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                NavigationLink(destination: NextView()) {
                    Text("Next View")
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
            }
        }
    }
}
#Preview {
    ContentView()
}
