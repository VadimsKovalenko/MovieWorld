import UIKit

final class CategoryViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Category"
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var categoryTableView: UITableView!
    
    // MARK: Properties
    
    private let categoryMovies = [CategoryMovie(name: "Top 250", movie: [Movie(image: UIImage(named: "21Bridges")!, name: "21 Bridges", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                         Movie(image: UIImage(named: "TheGoodLiar")!, name: "The Good Liar", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                         Movie(image: UIImage(named: "Terminator")!, name: "Terminator:D...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                         Movie(image: UIImage(named: "DoctorSleep")!, name: "Doctor Sleep", dateAndGenre: "2019,Foreign", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                         Movie(image: UIImage(named: "DowntonAbbey")!, name: "Downton Abbey", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "Paramount Movies", movie: [Movie(image: UIImage(named: "GreenBook")!, name: "Green Book", dateAndGenre: "2018,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                    Movie(image: UIImage(named: "WindRiver")!, name: "Wind River", dateAndGenre: "2017, Action movie", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                    Movie(image: UIImage(named: "Jumandji")!, name: "Jumandji: Wel...", dateAndGenre: "2017,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                    Movie(image: UIImage(named: "VoxLux")!, name: "Vox Lux", dateAndGenre: "2018,Musicial", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                    Movie(image: UIImage(named: "Acts")!, name: "Acts of Venge...", dateAndGenre: "2017,Action movie", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "Disaster movies", movie: [Movie(image: UIImage(named: "RayDonovan")!, name: "Ray Donovan", dateAndGenre: "2013-2019,Crime", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                   Movie(image: UIImage(named: "Billions")!, name: "Billions", dateAndGenre: "2016-2018,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                   Movie(image: UIImage(named: "HisDarkMate")!, name: "His Dark Mate...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                   Movie(image: UIImage(named: "Chernobyl")!, name: "Chernobyl", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                   Movie(image: UIImage(named: "Maigret")!, name: "Maigret", dateAndGenre: "2016,Detective", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "My french film festival", movie: [Movie(image: UIImage(named: "21Bridges")!, name: "21 Bridges", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                           Movie(image: UIImage(named: "TheGoodLiar")!, name: "The Good Liar", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                           Movie(image: UIImage(named: "Terminator")!, name: "Terminator:D...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                           Movie(image: UIImage(named: "DoctorSleep")!, name: "Doctor Sleep", dateAndGenre: "2019,Foreign", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                           Movie(image: UIImage(named: "DowntonAbbey")!, name: "Downton Abbey", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "Post-apocalyptic movies", movie: [Movie(image: UIImage(named: "GreenBook")!, name: "Green Book", dateAndGenre: "2018,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                           Movie(image: UIImage(named: "WindRiver")!, name: "Wind River", dateAndGenre: "2017, Action movie", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                           Movie(image: UIImage(named: "Jumandji")!, name: "Jumandji: Wel...", dateAndGenre: "2017,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                           Movie(image: UIImage(named: "VoxLux")!, name: "Vox Lux", dateAndGenre: "2018,Musicial", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                           Movie(image: UIImage(named: "Acts")!, name: "Acts of Venge...", dateAndGenre: "2017,Action movie", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "Sony movies", movie: [Movie(image: UIImage(named: "RayDonovan")!, name: "Ray Donovan", dateAndGenre: "2013-2019,Crime", ratingIMDB: "8,3", ratingKP: "5,6"),
                                               Movie(image: UIImage(named: "Billions")!, name: "Billions", dateAndGenre: "2016-2018,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                               Movie(image: UIImage(named: "HisDarkMate")!, name: "His Dark Mate...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                               Movie(image: UIImage(named: "Chernobyl")!, name: "Chernobyl", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                               Movie(image: UIImage(named: "Maigret")!, name: "Maigret", dateAndGenre: "2016,Detective", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "'START' movies", movie: [Movie(image: UIImage(named: "21Bridges")!, name: "21 Bridges", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                  Movie(image: UIImage(named: "TheGoodLiar")!, name: "The Good Liar", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                  Movie(image: UIImage(named: "Terminator")!, name: "Terminator:D...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                  Movie(image: UIImage(named: "DoctorSleep")!, name: "Doctor Sleep", dateAndGenre: "2019,Foreign", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                  Movie(image: UIImage(named: "DowntonAbbey")!, name: "Downton Abbey", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "Movies about killers", movie: [Movie(image: UIImage(named: "GreenBook")!, name: "Green Book", dateAndGenre: "2018,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                        Movie(image: UIImage(named: "WindRiver")!, name: "Wind River", dateAndGenre: "2017, Action movie", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                        Movie(image: UIImage(named: "Jumandji")!, name: "Jumandji: Wel...", dateAndGenre: "2017,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                        Movie(image: UIImage(named: "VoxLux")!, name: "Vox Lux", dateAndGenre: "2018,Musicial", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                        Movie(image: UIImage(named: "Acts")!, name: "Acts of Venge...", dateAndGenre: "2017,Action movie", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "Movies with Joaquin Phoenix", movie: [Movie(image: UIImage(named: "RayDonovan")!, name: "Ray Donovan", dateAndGenre: "2013-2019,Crime", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                               Movie(image: UIImage(named: "Billions")!, name: "Billions", dateAndGenre: "2016-2018,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                               Movie(image: UIImage(named: "HisDarkMate")!, name: "His Dark Mate...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                               Movie(image: UIImage(named: "Chernobyl")!, name: "Chernobyl", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                               Movie(image: UIImage(named: "Maigret")!, name: "Maigret", dateAndGenre: "2016,Detective", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "Movies about parent-children relationships", movie: [Movie(image: UIImage(named: "21Bridges")!, name: "21 Bridges", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                              Movie(image: UIImage(named: "TheGoodLiar")!, name: "The Good Liar", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                              Movie(image: UIImage(named: "Terminator")!, name: "Terminator:D...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                              Movie(image: UIImage(named: "DoctorSleep")!, name: "Doctor Sleep", dateAndGenre: "2019,Foreign", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                              Movie(image: UIImage(named: "DowntonAbbey")!, name: "Downton Abbey", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "Cyberpunk movies", movie: [Movie(image: UIImage(named: "GreenBook")!, name: "Green Book", dateAndGenre: "2018,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                    Movie(image: UIImage(named: "WindRiver")!, name: "Wind River", dateAndGenre: "2017, Action movie", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                    Movie(image: UIImage(named: "Jumandji")!, name: "Jumandji: Wel...", dateAndGenre: "2017,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                    Movie(image: UIImage(named: "VoxLux")!, name: "Vox Lux", dateAndGenre: "2018,Musicial", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                    Movie(image: UIImage(named: "Acts")!, name: "Acts of Venge...", dateAndGenre: "2017,Action movie", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
    CategoryMovie(name: "Movies that push boundaries", movie: [Movie(image: UIImage(named: "RayDonovan")!, name: "Ray Donovan", dateAndGenre: "2013-2019,Crime", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                               Movie(image: UIImage(named: "Billions")!, name: "Billions", dateAndGenre: "2016-2018,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                               Movie(image: UIImage(named: "HisDarkMate")!, name: "His Dark Mate...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                               Movie(image: UIImage(named: "Chernobyl")!, name: "Chernobyl", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                               Movie(image: UIImage(named: "Maigret")!, name: "Maigret", dateAndGenre: "2016,Detective", ratingIMDB: "8,3", ratingKP: "5,6")
    ])
    ]
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationController?.navigationBar.prefersLargeTitles = true
        categoryTableView.register(UINib(nibName: CategoryTableViewCell.reuseIdentifier,
                                         bundle: nil),
                                   forCellReuseIdentifier: CategoryTableViewCell.reuseIdentifier)
        categoryTableView.tableFooterView = UIView()
    }
}

// MARK: - UITableViewDelegate
extension CategoryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailCategoryViewController = DetailCategoryViewController()
        detailCategoryViewController.movies = categoryMovies[indexPath.row].movie
        navigationController?.pushViewController(detailCategoryViewController,
                                                 animated: true)
    }
}

// MARK: - UITableViewDataSource
extension CategoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categoryMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.reuseIdentifier,
                                                       for: indexPath) as? CategoryTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: categoryMovies[indexPath.row])
        
        return cell
    }
}
