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
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            VStack {
                SignUpPageIndicator(numPages: userInfo.numPages, currentPageNum: pageNum)

                
                HStack {
                    BackButton()
                    
//                    Button(action: {
//                        self.presentationMode.wrappedValue.dismiss()
//                    }, label: {
//
//                    })
                    
                    Text("What's your first name?")
                        .font(.largeTitle)
                }

                
                Text("You won't be able to change this later")
                
                
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



//VStack {
//

//
//
//    HStack {
//        Button(action: {
//            self.presentationMode.wrappedValue.dismiss()
//        }, label: {
//            Image(systemName: "chevron.left")
//                .foregroundColor(.primary)
//        }).padding(.all, 4)
//
//        Spacer()
//        Text("What's your first name?")
//            .font(.title2)
//            .fontWeight(.bold)
//
//        Spacer()
//    }
//    .padding(.top, 60)
//
//
//
//    Text("You won't be able to change this later")
//        .font(.system(size: 12, weight: .semibold))
//        .padding(.top, 4)
//
//
//
//
//    TextField("Add your first name", text: $userInfo.firstName)
//        .font(.system(size: 25))
//        .frame(width: userInfo.defaultWidthSize, height: userInfo.defaultHeightSize + 10)
//        .background(Color.white)
//        .cornerRadius(8)
//        .multilineTextAlignment(.center)
//        .padding(.top, 30)
//
//
//    Text("Your name will be shown on your profile")
//        .frame(alignment: .leading)
//        .font(.system(size: 12, weight: .semibold))
//        .padding(.top, 20)
//
//    NavigationLink(
//        destination: BirthdayPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
//        label: {
//            NextButton()
//        })
//        .disabled(userInfo.firstName.count == 0)
//        .offset(x: 120, y: 100)
//
//
//
//
//}
