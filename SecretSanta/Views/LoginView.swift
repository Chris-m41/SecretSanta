//
//  LoginView.swift
//  SecretSanta
//
//  Created by Christian Martinez on 9/13/22.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "globe")
                .resizable()
                .frame(width: 200, height: 200)
            
            Spacer()
            
            Group {
                TextField("E-mail", text: $email)
                TextField("Password", text: $password)
            }
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 55)
            .font(.system(size: 20))
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 4)
            .cornerRadius(16)
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
            
            Spacer()
            
            Button {
                print("Log in")
            } label: {
                Text("Log in")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 2)
                        )
            }
            .background(Color.blue) // If you have this
            .cornerRadius(25)         // You also need the cornerRadius here
            HStack {
                Text("Don't have an account?")
                Button {
                    print("Create account view")
                } label: {
                    Text("Create account")
                }
            }
            
            Spacer()
            
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
