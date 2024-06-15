//
//  ContentView.swift
//  ListView
//
//  Created by Balogun Kayode on 15/06/2024.
//

import SwiftUI

var videos: [Video] = VideoList.topTwelve

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(videos) { video in
                HStack {
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90.0)
                        .cornerRadius(8)
                    
                    Spacer().frame(width: 16)
                    
                    VStack(alignment: .leading) {
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                        
                        Spacer().frame(height: 5)
                        
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    Spacer() // Optional: to push the text to the leading edge
                }
                .padding(.vertical, 8) // Optional: Add vertical padding for better spacing
            }
            .navigationBarTitle("My Videos")
        }
    }
}

#Preview {
    ContentView()
}
