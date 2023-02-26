//
//  FormView.swift
//  EvaluationApp
//
//  Created by Huanzhou Wang on 2/25/23.
//

import SwiftUI

enum ProfileImageSize {
    case large
    case medium
    case small
}

enum NotifyMeAboutType {
    case anything
    case mentions
    case directMessages
}

struct FormView: View {
    
    @State private var username: String = ""
    
    @State private var givenName: String = ""
    @State private var familyName: String = ""
    
    @State private var notifyMeAbout: NotifyMeAboutType = .directMessages
    @State private var playNotificationSounds: Bool = false
    @State private var sendReadReceipts: Bool = false
    @State private var profileImageSize: ProfileImageSize = .medium
    
    var body: some View {
        NavigationView {
                Form {
                    Section(header: Text("Notifications")) {
                        Picker("Notify Me About", selection: $notifyMeAbout) {
                            Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
                            Text("Mentions").tag(NotifyMeAboutType.mentions)
                            Text("Anything").tag(NotifyMeAboutType.anything)
                        }
                        Toggle("Play notification sounds", isOn: $playNotificationSounds)
                        Toggle("Send read receipts", isOn: $sendReadReceipts)
                    }
                    Section(header: Text("User Profiles")) {
                        Picker("Profile Image Size", selection: $profileImageSize) {
                            Text("Large").tag(ProfileImageSize.large)
                            Text("Medium").tag(ProfileImageSize.medium)
                            Text("Small").tag(ProfileImageSize.small)
                        }
                        Button("Clear Image Cache") {}
                    }
                    TextField(
                        "User name (email address)",
                        text: $username
                    )
                    .onSubmit {
                    }
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .border(.secondary)
                    
                    
                    VStack {
                            TextField(
                                "Given Name",
                                text: $givenName
                            )
                            .disableAutocorrection(true)
                            TextField(
                                "Family Name",
                                text: $familyName
                            )
                            .disableAutocorrection(true)
                        }
                    .textFieldStyle(.roundedBorder)
                }

        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
