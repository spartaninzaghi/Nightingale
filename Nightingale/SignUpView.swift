//
//  SignUpView.swift
//  Nightingale
//
//  Created by Mate Narh on 8/15/23.
//

import SwiftUI

struct CustomTextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(width: 300, height:60)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 10)
    }
}

extension View {
    func customTextStyling() -> some View{
        modifier(CustomTextStyle())
    }
}

struct SignUpView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var confirm: String = ""
    var passwordsMatch: Bool {
        return password == confirm
    }
    var body: some View {
        NavigationView {
            ZStack {
                Image("nightingale_bg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                
                VStack {
                    Image("nightingale_logo")
                        .resizable()
                        .frame(width: 170, height: 170)
                        .padding()
                    
                    TextField("Username", text: $username)
                        .autocapitalization(.none)
                        .customTextStyling()
                    
                    SecureField("Password", text: $password)
                        .customTextStyling()
                    
                    SecureField("Confirm Password", text: $confirm)
                        .customTextStyling()
                    
                    let submit_btn = ZStack {
                        
                        Text("Submit")
                            .font(.title2)
                            .frame(width: 200, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.black)
                            .cornerRadius(30)
                    }
                    
                    let mismatch_txt = ZStack{
                        Rectangle()
                            .background(Color.black)
                            .frame(width: 220, height: 50)
                            .cornerRadius(10)
                            .blur(radius: 15)
                        
                            
                        Text("Passwords do not match")
                            .frame(width: 220, height: 50)
                            .bold()
                            .foregroundColor(.red)
//                        .background(Color.black)
                        
                    }
                                            
                    if !passwordsMatch {
                        mismatch_txt
                        submit_btn
                    }
                    
                    else {
                        if password == "" {
                            submit_btn
                                .padding()
                        }
                        else {
                            NavigationLink(destination: ProfileView()) {
                                Text("Submit")
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 60)
                                    .foregroundColor(Color.black)
                                    .background(Color.gray)
                                    .cornerRadius(15)
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            SignUpView()
        }
    }
}
