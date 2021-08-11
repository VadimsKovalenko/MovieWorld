import UIKit

final class MainViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let rowHeight: CGFloat = 281
        static let navigationTitle = "Season"
        static let hue: CGFloat = 6
        static let saturation: CGFloat = 58
        static let brightness: CGFloat = 90
        static let alpha: CGFloat = 1
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var mainTableView: UITableView!
    
    // MARK: Properties

    private var movies = [MainMovieSection(title: "New", movies: [Movie(image: UIImage(named: "21Bridges")!, name: "21 Bridges", date: "2019", genre: "Drama", ratingIMDB: "8,3", ratingKP: "5,6",
                                                                        acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                                Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                                Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                                Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                                Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                                Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                                Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                                Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                                Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                                Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                                        ]),
                                                                  Movie(image: UIImage(named: "TheGoodLiar")!, name: "The Good Liar", date: "2019", genre: "Drama", ratingIMDB: "8,3", ratingKP: "5,6",
                                                                        acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                                Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                                Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                                Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                                Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                                Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                                Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                                Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                                Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                                Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                                        ]),
                                                                  Movie(image: UIImage(named: "Terminator")!, name: "Terminator:D...", date: "2019", genre: "Adventures", ratingIMDB: "8,3", ratingKP: "5,6",
                                                                        acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                                Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                                Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                                Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                                Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                                Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                                Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                                Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                                Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                                Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                                        ]),
                                                                  Movie(image: UIImage(named: "DoctorSleep")!, name: "Doctor Sleep", date: "2019", genre: "Foreign", ratingIMDB: "8,3", ratingKP: "5,6",
                                                                        acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                                Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                                Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                                Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                                Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                                Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                                Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                                Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                                Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                                Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                                        ]),
                                                                  Movie(image: UIImage(named: "DowntonAbbey")!, name: "Downton Abbey", date: "2019", genre: "Drama", ratingIMDB: "8,3", ratingKP: "5,6",
                                                                        acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                                Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                                Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                                Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                                Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                                Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                                Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                                Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                                Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                                Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                                        ])
    ]),
    MainMovieSection(title: "Movies", movies: [Movie(image: UIImage(named: "GreenBook")!, name: "Green Book", date: "2018", genre: "Comedy", ratingIMDB: "8,3", ratingKP: "5,6",
                                                     acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                             Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                             Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                             Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                             Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                             Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                             Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                             Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                             Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                             Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                     ]),
                                               Movie(image: UIImage(named: "WindRiver")!, name: "Wind River", date: "2017", genre: "Action movie", ratingIMDB: "8,3", ratingKP: "5,6",
                                                     acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                             Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                             Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                             Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                             Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                             Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                             Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                             Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                             Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                             Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                     ]),
                                               Movie(image: UIImage(named: "Jumandji")!, name: "Jumandji: Wel...", date: "2017", genre: "Comedy", ratingIMDB: "8,3", ratingKP: "5,6",
                                                     acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                             Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                             Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                             Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                             Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                             Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                             Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                             Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                             Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                             Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                     ]),
                                               Movie(image: UIImage(named: "VoxLux")!, name: "Vox Lux", date: "2018", genre: "Musicial", ratingIMDB: "8,3", ratingKP: "5,6",
                                                     acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                             Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                             Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                             Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                             Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                             Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                             Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                             Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                             Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                             Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                     ]),
                                               Movie(image: UIImage(named: "Acts")!, name: "Acts of Venge...", date: "2017", genre: "Action movie", ratingIMDB: "8,3", ratingKP: "5,6",
                                                     acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                             Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                             Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                             Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                             Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                             Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                             Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                             Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                             Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                             Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                     ])
    ]),
    MainMovieSection(title: "Series and shows", movies: [Movie(image: UIImage(named: "RayDonovan")!, name: "Ray Donovan", date: "2013-2019", genre: "Crime", ratingIMDB: "8,3", ratingKP: "5,6",
                                                               acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                       Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                       Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                       Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                       Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                       Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                       Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                       Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                       Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                       Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                               ]),
                                                         Movie(image: UIImage(named: "Billions")!, name: "Billions", date: "2016-2018", genre: "Drama", ratingIMDB: "8,3", ratingKP: "5,6",
                                                               acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                       Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                       Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                       Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                       Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                       Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                       Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                       Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                       Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                       Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                               ]),
                                                         Movie(image: UIImage(named: "HisDarkMate")!, name: "His Dark Mate...", date: "2019", genre: "Adventures", ratingIMDB: "8,3", ratingKP: "5,6",
                                                               acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                       Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                       Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                       Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                       Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                       Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                       Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                       Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                       Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                       Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                               ]),
                                                         Movie(image: UIImage(named: "Chernobyl")!, name: "Chernobyl", date: "2019", genre: "Drama", ratingIMDB: "8,3", ratingKP: "5,6",
                                                               acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                       Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                       Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                       Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                       Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                       Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                       Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                       Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                       Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                       Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                               ]),
                                                         Movie(image: UIImage(named: "Maigret")!, name: "Maigret", date: "2016", genre: "Detective", ratingIMDB: "8,3", ratingKP: "5,6",
                                                               acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                       Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                       Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                       Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                       Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                       Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                       Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                       Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                       Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                       Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                               ])
    ]),
    MainMovieSection(title: "Animated movies", movies: [Movie(image: UIImage(named: "AngryBirds")!, name: "Angry Birds", date: "2017", genre: "Comedy", ratingIMDB: "8,3", ratingKP: "5,6",
                                                              acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                      Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                      Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                      Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                      Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                      Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                      Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                      Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                      Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                      Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                              ]),
                                                        Movie(image: UIImage(named: "KungFuPanda")!, name: "Kung Fu Panda", date: "2016", genre: "Comedy", ratingIMDB: "8,3", ratingKP: "5,6",
                                                              acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                      Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                      Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                      Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                      Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                      Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                      Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                      Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                      Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                      Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                              ]),
                                                        Movie(image: UIImage(named: "TheSecretLife")!, name: "The secret life", date: "2019", genre: "Comedy", ratingIMDB: "8,3", ratingKP: "5,6",
                                                              acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                      Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                      Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                      Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                      Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                      Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                      Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                      Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                      Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                      Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                              ]),
                                                        Movie(image: UIImage(named: "BossBaby")!, name: "Boss Baby", date: "2017", genre: "Comedy", ratingIMDB: "8,3", ratingKP: "5,6",
                                                              acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                      Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                      Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                      Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                      Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                      Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                      Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                      Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                      Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                      Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                              ]),
                                                        Movie(image: UIImage(named: "ThreeHeroes")!, name: "Three Heroes...", date: "2017", genre: "Adventures", ratingIMDB: "8,3", ratingKP: "5,6",
                                                              acter: [Acter(image: UIImage(named: "Dwayne")!, firstName: "Dwayne", lastName: "Johnson"),
                                                                      Acter(image: UIImage(named: "Kevin")!, firstName: "Kevin", lastName: "Hart"),
                                                                      Acter(image: UIImage(named: "Jack")!, firstName: "Jack", lastName: "Black"),
                                                                      Acter(image: UIImage(named: "Karen")!, firstName: "Karen", lastName: "Gillan"),
                                                                      Acter(image: UIImage(named: "Rhys")!, firstName: "Rhys", lastName: "Darbv"),
                                                                      Acter(image: UIImage(named: "Bobby")!, firstName: "Bobby", lastName: "Cannavale"),
                                                                      Acter(image: UIImage(named: "Nick")!, firstName: "Nick", lastName: "Jonas"),
                                                                      Acter(image: UIImage(named: "Alex")!, firstName: "Alex", lastName: "Wolff"),
                                                                      Acter(image: UIImage(named: "Ser'Dar")!, firstName: "Ser'Dar..", lastName: "Blain"),
                                                                      Acter(image: UIImage(named: "Madison")!, firstName: "Madison", lastName: "Iseman")
                                                              ])
    ])]
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = UIColor(hue: Constans.hue,
                                                                saturation: Constans.saturation,
                                                                brightness: Constans.brightness,
                                                                alpha: Constans.alpha)
        navigationItem.backButtonTitle = ""
        mainTableView.register(UINib(nibName: MainTableViewCell.reuseIdentifier, bundle: nil),
                               forCellReuseIdentifier: MainTableViewCell.reuseIdentifier)
        mainTableView.rowHeight = Constans.rowHeight
    }
}

// MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.reuseIdentifier,
                                                       for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }
        cell.delegate = self
        cell.configure(model: movies[indexPath.row])
        
        return cell
    }
}

// MARK: - MainTableViewCellDelagete
extension MainViewController: MainTableViewCellDelegate {
    func detailWasTappedCollection(at index: Movie) {
        let detailMoviesViewController = DetailMoviesViewController()
        detailMoviesViewController.movies = [index]
        self.navigationController?.pushViewController(detailMoviesViewController, animated: true)
    }
    
    func detailWasTapped(at section: [Movie]) {
        let detailMainViewController = DetailMainViewController()
        detailMainViewController.movies = section
        self.navigationController?.pushViewController(detailMainViewController, animated: true)
    }
    
    
}
