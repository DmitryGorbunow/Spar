//
//  DescriptionLineView.swift
//  SparAppSwiftUI
//
//  Created by Дмитрий Ерофеев on 30.01.2024.
//

import SwiftUI

struct SpecificationsView: View {
    let descriptionName: String
    let descriptionText: String
    var body: some View {
        HStack {
            VStack {
                Text(descriptionName)
                
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 15))
                Spacer()
            }
            .layoutPriority(1)
            VStack {
                Text("................................................................................................................")
                
                    .lineLimit(1)
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
                    .frame(minWidth: 50)
                Spacer()
            }
            .layoutPriority(0)
            VStack {
                Text(descriptionText)
                    .lineLimit(nil)
                    .font(.system(size: 15))
                    .multilineTextAlignment(.trailing)
                Spacer()
            }
            .layoutPriority(1)
        }
        
    }
}

