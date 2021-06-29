//
//  RadioButton.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/14/21.
//

import SwiftUI

struct RadioButtons: View {
    
    
    @ObservedObject var userInfo: UserInfo;
    var data: [String]
    

    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(data, id: \.self) { relationshipType in
                Button(action: {
                    userInfo.relationshipType = relationshipType;
                    
                }, label: {
                    HStack {
                        Text(relationshipType)
                        Spacer()
                        RadioCircle(circleSize: 20, chosen: userInfo.relationshipType == relationshipType)
                    }
                    
                    .frame(maxWidth: .infinity)
                    .padding()
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(5)

                })
                
            }
        }.padding(.vertical)
        .padding(.horizontal, 25)
        
    }
    
}




struct RadioButtons_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            RadioButtons(userInfo: UserInfo(), data: ["Casual Dating", "Long Term Relationship"])
        }

    }
}


