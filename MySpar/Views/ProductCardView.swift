//
//  ProductCardView.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/30/24.
//

import SwiftUI

struct ProductCardView: View {
    
    @ObservedObject var viewModel = ProductCardViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                VStack (alignment: .leading, spacing: 8) {
                    Text("Цена по карте")
                        .font(.system(size: 14))
                        .foregroundColor(Color.white)
                        .padding(4)
                        .background(Color.green)
                        .cornerRadius(4)
                    
                    Image(.product)
                        .resizable()
                        .frame(width: 300, height: 300)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                        
                        Text(viewModel.product.rating)
                        
                        Text("| \(viewModel.product.reviewCount) отзывов")
                            .foregroundColor(Color.gray)
                        
                        Spacer()
                        
                        Text("-\(viewModel.product.discount)%")
                            .foregroundColor(Color.white)
                            .padding(4)
                            .background(Color.red)
                            .cornerRadius(4)
                    }
                    
                    Text(viewModel.product.name)
                        .font(.system(size: 30, weight: .bold))
                        .lineLimit(2)
                    
                    HStack {
                        
                        Image("spain")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        
                        Text(viewModel.product.country)
                            .font(.system(size: 14))
                    }
                    .padding(.bottom)
                    
                    Text("Описание")
                        .bold()
                    
                    Text(viewModel.product.description)
                        .font(.system(size: 14))
                        .padding(.bottom)
                    
                    Text("Основные характеристики")
                        .bold()
                    
                    ForEach(viewModel.product.specifications, id: \.self) { spec in
                        SpecificationsView(descriptionName: spec.name, descriptionText: spec.value)
                    }
                    
                    Button(action: {}, label: {
                        Text("Все характеристики")
                            .bold()
                            .foregroundColor(Color.green)
                    })
                    .padding(.top)
                    
                    HStack {
                        Text("Отзывы")
                            .font(.system(size: 20, weight: .semibold))
                        Spacer()
                        Button(action: {}, label: {
                            Text("Все \(viewModel.product.reviewCount)")
                                .bold()
                                .foregroundColor(Color.green)
                        })
                    }
                    .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<viewModel.product.reviewCount, id: \.self) { i in
                                FeedbackCellView(feedback: viewModel.product.feedbacks[i])
                                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            }
                        }
                    }
                    
                    Button(action: {}, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.white)
                            Text("Оставить отзыв")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(Color.green)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.green, lineWidth: 2)
                        )
                        .frame(height: 40)
                    })
                }
                .padding()
            }
            
            BottomView(price: viewModel.product.price, discountedPrice: viewModel.product.discountedPrice)
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: CustomBackButton())
        .navigationBarItems(trailing: HStack(alignment: .firstTextBaseline) {
            Button(action: {} ) {
                Image(systemName: "list.clipboard")
            }
            Button(action: {} ) {
                Image(systemName: "square.and.arrow.up")
            }
            Button(action: {} ) {
                Image(systemName: "heart")
            }
        })
    }
}

#Preview {
    ContentView()
}


