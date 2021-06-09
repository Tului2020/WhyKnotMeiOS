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
    @Published var phoneNumber: String = "";
    @Published var countryCode: String = "1";
    @Published var termsAgreed: Bool = false;
    
    
    @Published var email: String = "";
    @Published var firstName: String = "";
    @Published var lastName: String = "";
    @Published var birthDay: Int = 0;
    @Published var birthMonth: Int = 0;
    @Published var birthYear: Int = 0;
    @Published var gender: String = "";
    
    @State var defaultWidthSize: CGFloat = 319;
    @State var defaultHeightSize:CGFloat = 80
    @State var defaultFontSize: CGFloat = 16;
    @State var defaultInputFontSize: CGFloat = 30;
    
    
    
}

