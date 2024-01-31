//
//  ProductCardViewModel.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/31/24.
//

import Foundation

final class ProductCardViewModel: ObservableObject {
    
    @Published var product = Product(
        name: "Добавка \"Липа\" к чаю 200 г",
        price: "55.9",
        discountedPrice: "199.9",
        discount: "5",
        currency: "₽",
        imageUrl: "product_image_url",
        rating: "4.1",
        reviewCount: 4,
        country: "Испания, Риоха",
        description: "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.",
        specifications: [
            Specification(name: "Производство", value: "Россия, Краснодарский Край"),
            Specification(name: "Энергетическая ценность, ккал/100 г", value: "22 ккал, 105 кДж"),
            Specification(name: "Жиры", value: "3.3 г"),
            Specification(name: "Белки", value: "3.3 г"),
            Specification(name: "Углеводы", value: "3.3 г"),
        ],
        feedbacks: [
            Feedback(author: "Александр В.", date: "7 мая 2021", rating: 4, text: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
            Feedback(author: "Александр В.", date: "7 мая 2021", rating: 4, text: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
            Feedback(author: "Александр В.", date: "7 мая 2021", rating: 4, text: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
            Feedback(author: "Александр В.", date: "7 мая 2021", rating: 4, text: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
        ]
    )
}

