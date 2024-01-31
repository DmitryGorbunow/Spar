//
//  BottomView.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/31/24.
//

import SwiftUI

struct BottomView: View {
    
    let price: String
    let discountedPrice: String
    
    var body: some View {
        VStack {
            Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                Text("Шт").tag(1)
                Text("Кг").tag(2)
            }
            .pickerStyle(.segmented)
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text(price)
                            .font(.system(size: 30, weight: .bold))
                        RublesForOne()
                    }
                    Text(discountedPrice)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .strikethrough()
                }
                Spacer()
                CountOfUnitsView(price: 120)
            }
        }
        .padding()
        .background(Color.white)
        
        .clipped()
        .shadow(color: Color.gray.opacity(0.3), radius: 6)
        .mask(Rectangle().padding(.top, -20))
    }
}
