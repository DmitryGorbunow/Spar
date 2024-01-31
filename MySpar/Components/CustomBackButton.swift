//
//  CustomBackButton.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/30/24.
//

import SwiftUI

struct CustomBackButton: View {
    @Environment(\.presentationMode) var presentationMode

       var body: some View {
           Button(action: {
               self.presentationMode.wrappedValue.dismiss()
           }) {
               HStack {
                   Image(systemName: "arrow.left")
                       .imageScale(.large)
               }
           }
       }
}

