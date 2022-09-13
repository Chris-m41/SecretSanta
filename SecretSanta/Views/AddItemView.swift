//
//  AddItemView.swift
//  SecretSanta
//
//  Created by Christian Martinez on 9/13/22.
//

import SwiftUI

struct AddItemView: View {
    @State var itemName = ""
    @State var websiteLink = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Group {
                TextField("Item Name", text: $itemName)
                TextField("Website Link", text: $websiteLink)
            }
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 55)
            .font(.system(size: 20))
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 4)
            .cornerRadius(16)
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
            
            Spacer()
            
            Button {
                print("Add Item to List")
                print("Navigate back to My List")
            } label: {
                Text("Add Item")
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
        .padding()
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
