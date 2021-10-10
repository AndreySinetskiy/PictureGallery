//
//  Picture.swift
//  PictureGallery
//
//  Created by 1 on 12.09.2021.
//

struct Picture {
    let author: String
    let nameOfPicture: String
    let image: String
    
    var title: String {
        "\(author) - \(nameOfPicture)"
    }


   static func getPicture() -> [Picture] {
    [
        Picture(author: "Andrey Sunetsky", nameOfPicture: "Summer Tree", image: "Image0"),
        Picture(author: "Olga Kiseleva", nameOfPicture: "Summer River", image: "Image1"),
        Picture(author: "Tima Kiselev", nameOfPicture: "Autumn is coming", image: "Image2"),
        Picture(author: "Georgiy Kiselev", nameOfPicture: "Beautiful Place", image: "Image3"),
        
        Picture(author: "Sergey Sinetskiy", nameOfPicture: "Lake", image: "Image4"),
        Picture(author: "Ludmila Sinetskaya", nameOfPicture: "Field", image: "Image5"),
        Picture(author: "Tima Kiselev", nameOfPicture: "Winter", image: "Image6"),
        Picture(author: "Nikas Safronov", nameOfPicture: "forest", image: "Image7"),
            ]
    }
}
