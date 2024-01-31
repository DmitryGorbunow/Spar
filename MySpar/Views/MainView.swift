//
//  MainView.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/30/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: ProductCardView()) {
                Text("Перейти к карточке товара")
            }
        }
    }
}

#Preview {
    MainView()
}
