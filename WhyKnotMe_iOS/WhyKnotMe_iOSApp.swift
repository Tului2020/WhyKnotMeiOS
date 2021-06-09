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

class userInformation: ObservableObject {
    @Published var phoneNumber: String = "(510) 207-7042";
    @Published var countryCode: Int = 1;
    @Published var termsAgreed: Bool = false;
    
    
    @Published var email: String = "";
    @Published var firstName: String = "";
    @Published var lastName: String = "";
    @Published var birthDay: Int = 0;
    @Published var birthMonth: Int = 0;
    @Published var birthYear: Int = 0;
    @Published var gender: String = "";
}

