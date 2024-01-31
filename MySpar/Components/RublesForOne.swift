//
//  RublesForOne.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/31/24.
//

import SwiftUI

struct RublesForOne: View {
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    Text("₽")
                        .font(.system(size: 13))
                    Spacer()
                }
                Spacer()
            }
            Rectangle()
                .frame(width: 20, height: 1)
            .rotationEffect(Angle(degrees: -45))
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Text("шт")
                        .font(.system(size: 11))
                    
                }
                
            }
        }
        .frame(width: 26, height: 25)
        
    }
}

