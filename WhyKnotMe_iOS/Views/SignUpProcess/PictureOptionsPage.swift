//
//  PictureOptionsPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/28/21.
//

import SwiftUI

struct PictureOptionsPage: View {
    
    
    @ObservedObject var userInfo: UserInfo;
    
    var body: some View {
        ZStack {
            BackgroundPicture();
            
            
            VStack(spacing: 20) {
                
                HStack(spacing: 20) {
                    BackButton()
                    
                    Text("Add your first photo")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                
                Text("Choose a photo of just you where you can clearly see your face. You can change this later")
                    .font(.system(size: 15))
                    .padding()
                
                
                Group {
                    
                    NavigationLink(
                        destination: LocalPictureOption(userInfo: userInfo).navigationBarBackButtonHidden(true),
                        label: {
                            Text("Choose a photo")
                            Spacer()
                        })
                    
                    
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("Add from Facebook")
                            Spacer()
                        })
                    
                    
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("Add from TikTok")
                            Spacer()
                        })
                }
                .padding()
                .padding(.horizontal)
                .frame(alignment: .leading)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(7)
                .padding(.horizontal)
                
                
                Spacer()
            }
            .padding()
            .accentColor(Color.black)
            
            
        }
    }
}

struct PictureOptionsPage_Previews: PreviewProvider {
    static var previews: some View {
        PictureOptionsPage(userInfo: UserInfo())
    }
}
