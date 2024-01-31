//
//  FeedbackCellView.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/31/24.
//

import SwiftUI

struct FeedbackCellView: View {
    
    let feedback: Feedback
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 15, height: 15))

                .foregroundColor(.white)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 6)
            VStack {
                HStack {
                    Text(feedback.author)
                        .font(.system(size: 14, weight: .bold))
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
                HStack {
                    Text(feedback.date)
                        .foregroundColor(.gray)
                        .font(.system(size: 12, weight: .medium))
                    Spacer()
                }
                HStack {
                    ForEach(0..<feedback.rating, id: \.self) {_ in
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -5))
                            .foregroundColor(.yellow)
                    }
                    ForEach(feedback.rating..<5, id: \.self) {_ in
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -5))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                
                Text(feedback.text)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .font(.system(size: 13))
                Spacer(minLength: 0)
                
                
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        .frame(width: 220, height: 140)


    }
}

