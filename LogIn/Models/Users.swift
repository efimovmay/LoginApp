//
//  File.swift
//  LogIn
//
//  Created by Aleksey on 13.12.2022.
//


struct User {
    let name: String
    let password: String
    let persons: Person
    let hobbys: [Hobby]
    
    static func getUser() -> User {
        User(name: "Cat",
             password: "",
             persons: Person(about: "Типичный полосатый кот. Характер покладистый, не женат. Всегда линяет. Отзывается на 'хороший мальчик' и 'котлета'.   ", image: "portrait"),
             hobbys: [Hobby(type: "Природа его страсть", image: "travel"),
                      Hobby(type: "Иногда, крадет еду у хозяев", image: "eat"),
                      Hobby(type: "Обожает клевые аксесуары", image: "fashion")]
        )
    }
}

struct Person {
    let about: String
    let image: String
}

struct Hobby {
    let type: String
    let image: String
}

