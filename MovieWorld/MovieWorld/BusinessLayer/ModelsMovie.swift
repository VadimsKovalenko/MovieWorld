import UIKit

struct MainMovieSection {
    var title: String
    var movies: [Movie]
}

struct Movie {
    var image: UIImage
    var name: String
    var date: String
    var genre: String
    var ratingIMDB: String
    var ratingKP: String
}

struct CategoryMovie {
    var name: String
    var movie: [Movie]
}

struct ProfileMovie {
    var name: String
}

struct Acter {
    var image: UIImage
    var firstName: String
    var lastName: String
}
