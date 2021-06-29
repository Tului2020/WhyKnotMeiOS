//
//  RadioButton.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/14/21.
//

import SwiftUI

struct RadioButtons: View {
    
    
    @Binding var chosenType: String;
    var data: [String]
    

    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(data, id: \.self) { relationshipType in
                
                HStack {
                    Text(relationshipType)
                    Spacer()
                    Button(action: {
                        chosenType = relationshipType;
                    }, label: {
                        RadioCircle(circleSize: 20, chosen: chosenType == relationshipType)
                    })
                }
                .padding()
                .frame(height: 50)
                .background(Color.white)
                .cornerRadius(5)
            }
        }
        .padding(.horizontal)
        
    }
    
}




struct RadioButtons_Previews: PreviewProvider {
    
    static var previews: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            RadioButtons(chosenType: .constant(""), data: ["Casual Dating", "Long Term Relationship"])
        }

    }
}


