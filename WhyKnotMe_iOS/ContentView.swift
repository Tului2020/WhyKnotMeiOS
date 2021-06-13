//
//  ContentView.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userInfo = UserInfo();
    
    var body: some View {
        LoginPage(userInfo: userInfo)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
