import UIKit

final class DetailMoviesViewController: UIViewController {
    
    // MARK: IBOutlets
    
//    @IBOutlet private weak var castTableView: UITableView!
//    @IBOutlet private weak var trailersAndGalleryTableView: UITableView!
//
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
        detailImageView.image = movies.first?.image
        detailNameLabel.text = movies.first?.name
        detailDateLabel.text = movies.first?.date
        detailDateLabel.text = movies.first?.genre
        detailScoreLabel.text = "IMDB \(movies.first?.ratingIMDB ?? "--"), KP \(movies.first?.ratingKP ?? "--")"
    }
    
    @IBAction private func bookMarkButtonPressed(_ barButtonPressed: UIBarButtonItem) {
        
    }
}
