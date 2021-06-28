//
//  BirthdayPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct BirthdayPage: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var userInfo: UserInfo;
    var pageNum: Int = 2;
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                

                SignUpPageIndicator(numPages: userInfo.numPages, currentPageNum: pageNum)



                
                HStack {
                    BackButton()
                    
                    Text("When's your birthday?")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .padding(.top, 80)

                
                
                
                HStack(alignment: .center, spacing: 10, content: {
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        Text("Month")
                        TextField("MM", text: $userInfo.birthMonth)
                            .frame(width: 65, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .background(Color.white)
                            .cornerRadius(4)
                            .font(.title)
                        
                    })
                
                    VStack(alignment: .center, spacing: 10, content: {
                        Text("Day")
                        TextField("DD", text: $userInfo.birthDay)
                            .frame(width: 65, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .background(Color.white)
                            .cornerRadius(4)
                            .font(.title)
                    })
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        Text("Year")
                        TextField("YYYY", text: $userInfo.birthMonth)
                            .frame(width: 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .background(Color.white)
                            .cornerRadius(4)
                            .font(.title)
                    })
                })
                
                
                Text("No worries, your birthday will not be shown, just your age ")
                    .frame(alignment: .leading)
                    .font(.system(size: 15, weight: .semibold))

                
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

struct BirthdayPage_Previews: PreviewProvider {
    static var previews: some View {
        BirthdayPage(userInfo: UserInfo())
    }
}
