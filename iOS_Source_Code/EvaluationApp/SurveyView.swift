//
//  SurveyView.swift
//  EvaluationApp
//
//  Created by Huanzhou Wang on 2/25/23.
//

import SwiftUI

struct SurveyView: View {
    
//    @FocusState private var focusedField: Field?
    
    @State var isFinished = false
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var hasPermanentAddress = false
    @State private var isCitizen = false
    @State private var isWIC = false
    @State private var numberOfChild = 0
    @State private var householdSize = 1
    @State private var income = ""
    @State private var livingState = "Alabama"
    let states = [
        "Alabama",
        "Alaska",
        "Arizona",
        "Arkansas",
        "California",
        "Colorado",
        "Connecticut",
        "Delaware",
        "Florida",
        "Georgia",
        "Hawaii",
        "Idaho",
        "Illinois",
        "Indiana",
        "Iowa",
        "Kansas",
        "Kentucky",
        "Louisiana",
        "Maine",
        "Maryland",
        "Massachusetts",
        "Michigan",
        "Minnesota",
        "Mississippi",
        "Missouri",
        "Montana",
        "Nebraska",
        "Nevada",
        "New Hampshire",
        "New Jersey",
        "New Mexico",
        "New York",
        "North Carolina",
        "North Dakota",
        "Ohio",
        "Oklahoma",
        "Oregon",
        "Pennsylvania",
        "Rhode Island",
        "South Carolina",
        "South Dakota",
        "Tennessee",
        "Texas",
        "Utah",
        "Vermont",
        "Virginia",
        "Washington",
        "West Virginia",
        "Wisconsin",
        "Wyoming"
    ]

    
    var body: some View {
        
        if isFinished {
            ResultView()
        } else {
        VStack {
            NavigationView {
                VStack {
                    Form {
                        Section() {
                            DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                            Picker("Select your state",selection: $livingState) {
                                ForEach(states, id: \.self) {
                                    Text($0)
                                }
                            }
                            TextField("Weekly Income", text: $income)
                                .keyboardType(.numberPad)
                        }
                        
                        Section(header: Text("Information")) {
                            Toggle("Do you have a permanent address?", isOn: $hasPermanentAddress)
                            Toggle("Are you a U.S. citizen?", isOn: $isCitizen)
                            Toggle("Are you pregnant, postpartum, breastfeeding, or do you have a child under the age of 5?", isOn: $isWIC)
                        }
                        Section(header: Text("Information")) {
                            Stepper("Number of child: \(numberOfChild)", value: $numberOfChild, in: 0...100)
                            Stepper("Household size: \(householdSize)", value: $householdSize, in: 1...100)

                        }
                        Button(action: {
                            self.isFinished.toggle()
                        }) {
                            Text("Get The Suggestion")
                        }
                    }
                }
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
            .navigationTitle("Application Form")
        }
        }
    }
}

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
