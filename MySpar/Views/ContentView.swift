//
//  ContentView.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "tree.circle")
                    Text("Главная")
                }
            
            Text("Каталог")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Каталог")
                }
            
            Text("Корзина")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
            
            Text("Профиль")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        }
    }
}

#Preview {
    ContentView()
}
