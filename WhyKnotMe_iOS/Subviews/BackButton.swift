//
//  BackButton.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/28/21.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var buttonView: String = ""

        
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            if (buttonView == "") {
                Image(systemName: "chevron.left")
                    .font(.title3)
            } else {
                Text(buttonView)
                    .underline()
            }

        })
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            BackButton(buttonView: "Hello")
            BackButton()
        }
        
    }
}
