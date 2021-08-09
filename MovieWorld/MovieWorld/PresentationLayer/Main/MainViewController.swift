import UIKit

final class MainViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let rowHeight: CGFloat = 281
        static let navigationTitle = "Season"
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var mainTableView: UITableView!
    
    // MARK: Properties

    private var movies = [MainMovieSection(title: "New", movies: [Movie(image: UIImage(named: "21Bridges")!, name: "21 Bridges", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                  Movie(image: UIImage(named: "TheGoodLiar")!, name: "The Good Liar", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                  Movie(image: UIImage(named: "Terminator")!, name: "Terminator:D...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                  Movie(image: UIImage(named: "DoctorSleep")!, name: "Doctor Sleep", dateAndGenre: "2019,Foreign", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                  Movie(image: UIImage(named: "DowntonAbbey")!, name: "Downton Abbey", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
                          MainMovieSection(title: "Movies", movies: [Movie(image: UIImage(named: "GreenBook")!, name: "Green Book", dateAndGenre: "2018,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                     Movie(image: UIImage(named: "WindRiver")!, name: "Wind River", dateAndGenre: "2017, Action movie", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                     Movie(image: UIImage(named: "Jumandji")!, name: "Jumandji: Wel...", dateAndGenre: "2017,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                     Movie(image: UIImage(named: "VoxLux")!, name: "Vox Lux", dateAndGenre: "2018,Musicial", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                     Movie(image: UIImage(named: "Acts")!, name: "Acts of Venge...", dateAndGenre: "2017,Action movie", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
                          MainMovieSection(title: "Series and shows", movies: [Movie(image: UIImage(named: "RayDonovan")!, name: "Ray Donovan", dateAndGenre: "2013-2019,Crime", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                               Movie(image: UIImage(named: "Billions")!, name: "Billions", dateAndGenre: "2016-2018,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                               Movie(image: UIImage(named: "HisDarkMate")!, name: "His Dark Mate...", dateAndGenre: "2019,Adventures", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                               Movie(image: UIImage(named: "Chernobyl")!, name: "Chernobyl", dateAndGenre: "2019,Drama", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                               Movie(image: UIImage(named: "Maigret")!, name: "Maigret", dateAndGenre: "2016,Detective", ratingIMDB: "8,3", ratingKP: "5,6")
    ]),
                          MainMovieSection(title: "Animated movies", movies: [Movie(image: UIImage(named: "AngryBirds")!, name: "Angry Birds", dateAndGenre: "2017,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                              Movie(image: UIImage(named: "KungFuPanda")!, name: "Kung Fu Panda", dateAndGenre: "2016,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                              Movie(image: UIImage(named: "TheSecretLife")!, name: "The secret life", dateAndGenre: "2019,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                              Movie(image: UIImage(named: "BossBaby")!, name: "Boss Baby", dateAndGenre: "2017,Comedy", ratingIMDB: "8,3", ratingKP: "5,6"),
                                                                              Movie(image: UIImage(named: "ThreeHeroes")!, name: "Three Heroes...", dateAndGenre: "2017,Adventures", ratingIMDB: "8,3", ratingKP: "5,6")
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
        mainTableView.register(UINib(nibName: MainTableViewCell.reuseIdentifier, bundle: nil),
                               forCellReuseIdentifier: MainTableViewCell.reuseIdentifier)
        mainTableView.rowHeight = Constans.rowHeight
    }
}

// MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailMainViewController = DetailMainViewController()
        guard let move = movies.first else { return }
        detailMainViewController.movies = move.movies
        self.navigationController?.pushViewController(detailMainViewController, animated: true)
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
        cell.configure(model: movies[indexPath.row])
        
        return cell
    }
}
