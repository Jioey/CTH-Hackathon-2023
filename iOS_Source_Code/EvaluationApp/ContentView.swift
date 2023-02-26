//
//  ContentView.swift
//  EvaluationApp
//
//  Created by Huanzhou Wang on 2/25/23.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "figure.and.child.holdinghands")
                    Image(systemName: "heart.rectangle")
                    Image(systemName: "list.bullet.clipboard.fill")
                }
                .foregroundColor(.pink)
                .bold()
                .scaleEffect(3)
                .frame(maxWidth: .infinity, maxHeight: 200)
                Text("NavigAid")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                    .padding()
                Spacer()
                Text("Fill out easy form to know helpful programs that fit you")
                    .font(.subheadline)
                    .padding()
                NavigationLink(destination: SurveyView()) {
                    Text("Start Application")
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 250,height: 60)
                        .background(.blue)
                        .cornerRadius(50)
                        .padding(.bottom,20)
                }
            }
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
