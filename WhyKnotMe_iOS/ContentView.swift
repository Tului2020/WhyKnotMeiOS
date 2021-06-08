//
//  ContentView.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                LoginPage()
                    .offset(y:-60)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
