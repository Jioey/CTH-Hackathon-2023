//
//  RecommendationRow.swift
//  EvaluationApp
//
//  Created by Huanzhou Wang on 2/25/23.
//

import SwiftUI

struct TextOverlay: View {
    var title: String
    
    var body: some View {
        ZStack {
            Text(title)
                .fontWeight(.black)
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(20)
    }
}

struct RecommendationRow: View {
    let url : String
    let title: String
    
    
    var body: some View {
        
        VStack {
            AsyncImage(url: URL(string: url))
            {image in image.resizable().aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
            .opacity(0.9)
            .overlay(TextOverlay(title: title),alignment: .bottomTrailing)
        }
        .cornerRadius(30)
        
    }
}

struct RecommendationRow_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationRow(url:"https://www.mass.gov/files/2020-01/400x300%20-%20BF%20tab.jpg", title: "WIC Massachusetts")
    }
}
