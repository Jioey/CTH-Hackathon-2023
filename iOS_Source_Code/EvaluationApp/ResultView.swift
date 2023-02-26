//
//  ResultView.swift
//  EvaluationApp
//
//  Created by Huanzhou Wang on 2/25/23.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        ScrollView {
            VStack(spacing:30) {
                Link(destination: URL(string: "https://www.mass.gov/snap-benefits-formerly-food-stamps")!) {
                    RecommendationRow(url:"https://i.ytimg.com/vi/4D8gZ-LrSW8/maxresdefault.jpg", title: "Supplemental Nutrition Assistance Program (SNAP) Massachusetts")
                }
                Link(destination: URL(string: "https://www.mass.gov/service-details/learn-about-home-energy-assistance-liheap")!) {
                    RecommendationRow(url:"https://www.kttn.com/wp-content/uploads/2019/10/LIHEAP-Graphic.jpg", title: "Massachusetts Low Income Home Energy Assistance Program")
                }
                Link(destination: URL(string: "https://www.doe.mass.edu/cnp/nprograms/nslp.html")!){
                    RecommendationRow(url:"https://www.projectbread.org/uploads/attachments/cl6mkama400397q9h3tihz4v9-en-schoomeals-social-fb-tw-04.0.31.1600.837.full.png", title: "Massachusetts School Breakfast and Lunch Program")
                }
                Link(destination:URL(string: "https://www.mass.gov/orgs/women-infants-children-nutrition-program")!)  {
                    RecommendationRow(url:"https://www.mass.gov/files/2020-01/400x300%20-%20BF%20tab.jpg", title: "Special Supplemental Nutrition Program for Women, Infants, and Children (WIC) Massachusetts")
                }
            }
            .navigationTitle("Programs Might Fit You")
            .padding()
            .padding(.horizontal)
        }

    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
