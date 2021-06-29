//
//  NamePage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct NamePage: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var userInfo: UserInfo;
    @Binding var alreadySent: Bool;
    var pageNum: Int = 1;
    
    
    var body: some View {
        ZStack {
            BackgroundPicture()


            VStack(spacing: 10) {
                

                SignUpPageIndicator(numPages: userInfo.numPages, currentPageNum: pageNum)



                
                HStack {
                    BackButton()
                    
                    Text("What's your first name?")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .padding(.top, 80)

                
                Text("You won't be able to change this later")
                    .font(.subheadline)
                
                
                TextField("Add your first name", text: $userInfo.firstName)
                    .font(.system(size: 25))
                    .frame(width: userInfo.defaultWidthSize, height: userInfo.defaultHeightSize + 10)
                    .background(Color.white)
                    .cornerRadius(8)
                    .multilineTextAlignment(.center)
                    .padding(.top, 30)
                
                
                Text("Your name will be shown on your profile")
                    .frame(alignment: .leading)
                    .font(.system(size: 12, weight: .semibold))

                
                Spacer()
                
                HStack {
                    Spacer()
                    NavigationLink(
                        destination: BirthdayPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
                        label: {
                            NextButton()
                        })
                        .disabled(userInfo.firstName.count == 0)
                }

                Spacer()

                
                
                
                
            }
            .accentColor(.black)
            .padding()
            
            
            
        }
    }
}

struct NamePage_Previews: PreviewProvider {
    static var previews: some View {
        NamePage(userInfo: UserInfo(), alreadySent: .constant(false))
    }
}

