//
//  CountOfUnitsView.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/31/24.
//

import SwiftUI

struct CountOfUnitsView: View {
    let price: Double
    
    @State var count = 1
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 150, height: 40)
                .foregroundColor(.green)
            HStack {
                Button {
                    if count >= 1 {
                        count -= 1
                    }
                } label: {
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                }
                VStack {
                    Text("\(count) шт")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .medium))
                    Text("\( String(Double(round(10 * Double(count) * price) / 10)))₽")
                        .foregroundColor(.white)
                        .font(.system(size: 12, weight: .regular))
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                Button {
                    count += 1
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

