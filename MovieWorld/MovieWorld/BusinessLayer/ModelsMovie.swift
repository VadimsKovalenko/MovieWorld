import UIKit

struct MainMovieSection {
    var title: String
    var movies: [Movie]
}

struct Movie {
    var image: UIImage
    var name: String
    var dateAndGenre: String
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
