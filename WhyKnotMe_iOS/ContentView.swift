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
        
        NavigationView {
            LoginPage(userInfo: userInfo)
                .offset(y:-60)
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
