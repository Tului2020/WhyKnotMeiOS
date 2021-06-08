//
//  WhyKnotMe_iOSApp.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI

@main
struct WhyKnotMe_iOSApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppInformation: ObservableObject {
    @Published var phoneNumber = "(510) 207-7042";
    @Published var email = "";
    @Published var firstName = "";
    @Published var lastName = "";
    @Published var birthDay = 0;
    @Published var birthMonth = 0;
    @Published var birthYear = 0;
    @Published var gender = "";
}

