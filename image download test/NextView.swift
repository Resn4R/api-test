//
//  NextView.swift
//  image download test
//
//  Created by Vito Borghi on 12/10/2023.
//

import SwiftUI

struct NextView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/missingno.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    NextView()
}
