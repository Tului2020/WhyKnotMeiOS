//
//  RadioButton.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/14/21.
//

import SwiftUI

struct RadioButtons: View {
    
    @State var chosen: Bool = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(data, id: \.self) { i in
                Button(action: {
                    
                    
                    
                }, label: {
                    Text(i)
                    Spacer()
                    Circle().fill(Color.black.opacity(0.5)).frame(width: 20, height: 20)
                })
                
            }
        }.padding(.vertical)
        .padding(.horizontal, 25)
        
    }
    
    
}

var data = ["Casual Dating", "Long Term Relationship", "None"]


struct RadioButtons_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtons()
    }
}


