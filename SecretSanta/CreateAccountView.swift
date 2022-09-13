//
//  CreateAccountView.swift
//  SecretSanta
//
//  Created by Christian Martinez on 9/13/22.
//

import SwiftUI

struct CreateAccountView: View {
    @State var email = ""
    @State var password = ""
    @State var firstName = ""
    @State var lastName = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Group {
                TextField("E-mail", text: $email)
                TextField("Password", text: $password)
                TextField("E-mail", text: $firstName)
                TextField("Password", text: $lastName)
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
                Text("Create Account")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 2)
                        )
            }
            .background(Color.blue)
            .cornerRadius(25)
            
            Spacer()
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
