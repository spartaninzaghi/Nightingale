//
//  SignUpView.swift
//  Nightingale
//
//  Created by Mate Narh on 8/15/23.
//

import SwiftUI

struct SignUpView: View {
    
    init() {
        // Make the navigation bar transparent
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
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
                        .padding()
                        .frame(width: 300, height:60)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height:60)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                    SecureField("Confirm Password", text: $confirm)
                        .padding()
                        .frame(width: 300, height:60)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                    let submit_btn = ZStack {
                        
                        Text("Submit")
                            .font(.largeTitle)
                            .frame(width: 200, height: 60)
                            .foregroundColor(Color.white)
                            .background(Color.black)
                            .cornerRadius(15)
                    }
                    
                    let mismatch_txt = Text("Passwords do not match")
                        .bold()
                        .foregroundColor(.red)
                    
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
                        
    //                }
    //                .frame(width: 90, height: 90)
    //                .background(Color.clear)
    //                .foregroundColor(Color.clear)
    //                .cornerRadius(30)
    //                .padding(151.0)
                    
                    
                    
                    
                }
            
            //                    .multilineTextAlignment(.center)
            
            
            
            
        }
    }
    
    
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            SignUpView()
        }
    }
}
