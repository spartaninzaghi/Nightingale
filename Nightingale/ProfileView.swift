//
//  ProfileView.swift
//  Nightingale
//
//  Created by Mate Narh on 8/15/23.
//

import SwiftUI

struct ProfileView: View {

        @State var firstname: String = ""
        @State var lastname: String = ""
        @State var username: String = ""
        @State var birthdate = Date()
        
        var body: some View {
            NavigationView{
                
                
                Form {
                    Section(header: Text("Personal Information")){
                        TextField("First name", text: $firstname)
                        
                            .autocapitalization(.none)
                        SecureField("Last name", text: $lastname)
                            .autocapitalization(.none)
                        SecureField("Username", text: $username)
                            .autocapitalization(.none)
                        DatePicker("Birthdate:", selection: $birthdate, displayedComponents: .date)}
                    Section(header: Text("Avatar")){
                        
                            
                            
                        }
                    
                }
                .navigationTitle("Account")
                
            }
        }
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
