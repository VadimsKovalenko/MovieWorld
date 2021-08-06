import UIKit

struct MainMovieSection {
    var title: String
    var movies: [Movie]
}

struct Movie {
    var image: UIImage
    var name: String
    var dateAndGenre: String
}

struct CategoryMovie {
    var name: String
}

struct ProfileMovie {
    var name: String
}
