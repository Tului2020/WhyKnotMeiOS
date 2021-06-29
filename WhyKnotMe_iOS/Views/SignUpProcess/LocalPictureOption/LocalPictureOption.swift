//
//  LocalPictureOption.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/29/21.
//

import SwiftUI

struct LocalPictureOption: View {
    
    @ObservedObject var userInfo: UserInfo;
    @State var firstPicture: UIImage = UIImage(named: "")!;
    @State var secondPicture: UIImage = UIImage(named: "")!;
    @State var thirdPicture: UIImage = UIImage(named: "")!;
    
    
    
    
    var body: some View {
        ZStack {
            BackgroundPicture();
            
            VStack {
                Text("Add more photos")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Profiles with 2 or more pictures are more likely to get a match, you can change these later");
                
                HStack(spacing: 20) {
                    Group {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        })
                        
                        
                        
                        
                    }
                    
                    
                }
            }
            .padding()
            
        }
    }
}

struct LocalPictureOption_Previews: PreviewProvider {
    static var previews: some View {
        LocalPictureOption(userInfo: UserInfo())
    }
}
