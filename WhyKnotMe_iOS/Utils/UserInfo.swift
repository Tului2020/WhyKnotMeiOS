//
//  UserInfo.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI



class UserInfo: ObservableObject {
    @Published var phoneNumber: String = "5102077042";
    @Published var countryCode: String = "1";
    @Published var termsAgreed: Bool = true;
    
    @Published var email: String = "";
    @Published var firstName: String = "";
    @Published var lastName: String = "";
    @Published var birthDay: Int = 0;
    @Published var birthMonth: Int = 0;
    @Published var birthYear: Int = 0;
    @Published var gender: String = "";
    @Published var username: String = "";
    @Published var codeDict: [Int: String] = Dictionary<Int, String>(uniqueKeysWithValues: (0..<4).map{($0, "")});
    @Published var firstResponderIndex = 0;
    
    
    var defaultWidthSize: CGFloat = 319;
    var defaultHeightSize:CGFloat = 45;
    var defaultFontSize: CGFloat = 16;

    var defaultInputHeightSize:CGFloat = 40;
    var defaultContentHeight:CGFloat = 600;
    
    var numPages: Int = 4;
    
    
}
