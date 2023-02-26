//
//  SwiftUIView.swift
//  EvaluationApp
//
//  Created by Huanzhou Wang on 2/25/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
            Form {
                Section(header: Text("Test")) {
                    HStack {
                        Button("Button 1") {
                            print("Button 1")
                        }
                    }
                }
            }
        }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
