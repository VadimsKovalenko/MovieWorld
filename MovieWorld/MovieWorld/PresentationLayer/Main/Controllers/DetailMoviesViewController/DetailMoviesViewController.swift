import UIKit

final class DetailMoviesViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let rowHeight: CGFloat = 192
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var castTableView: UITableView!
    @IBOutlet private weak var timeMovie: UILabel!
    @IBOutlet private weak var descriptionMovie: UITextView!
    @IBOutlet private weak var detailImageView: UIImageView!
    @IBOutlet private weak var detailNameLabel: UILabel!
    @IBOutlet private weak var detailGenreLabel: UILabel!
    @IBOutlet private weak var detailDateLabel: UILabel!
    @IBOutlet private weak var detailScoreLabel: UILabel!
    
    // MARK: Properties
    
    private lazy var bookMark: UIBarButtonItem = {
        let bookMark = UIBarButtonItem()
        bookMark.image = UIImage(systemName: "bookmark")
        bookMark.action = #selector(bookMarkButtonPressed(_:))
        return bookMark
    }()
    var movies = [Movie]()
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.rightBarButtonItem = bookMark
        navigationController?.navigationBar.prefersLargeTitles = true
        castTableView.register(
            UINib(nibName: CastTableViewCell.reuseIdentifier,
                  bundle: nil),
            forCellReuseIdentifier: CastTableViewCell.reuseIdentifier)
        castTableView.rowHeight = Constans.rowHeight
        detailImageView.image = movies.first?.image
        detailNameLabel.text = movies.first?.name
        detailDateLabel.text = movies.first?.date
        detailDateLabel.text = movies.first?.genre
        detailScoreLabel.text = "IMDB \(movies.first?.ratingIMDB ?? "--"), KP \(movies.first?.ratingKP ?? "--")"
    }
    
    @IBAction private func bookMarkButtonPressed(_ barButtonPressed: UIBarButtonItem) {
        
    }
}

// MARK: - UITableViewDataSource
extension DetailMoviesViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: CastTableViewCell.reuseIdentifier,
                for: indexPath) as? CastTableViewCell else {
            return UITableViewCell()
        }
        cell.delegate = self
        cell.configure(model: movies[indexPath.row])
        return cell
    }
}

// MARK: - CastTableViewCellDelegate 
extension DetailMoviesViewController: CastTableViewCellDelegate {
    func detailWasTapped(at section: [Acter]) {
        let castViewController = CastViewController()
        guard let urapActers = movies.first?.acter else { return }
        castViewController.acters = urapActers
        navigationController?.pushViewController(castViewController, animated: true)
    }
    
    func detailWasTappedCollection(at index: Acter) {
        let detailCastViewController = DetailCastViewController()
        detailCastViewController.acters = [index]
        navigationController?.pushViewController(detailCastViewController, animated: true)
    }
    
    
}
