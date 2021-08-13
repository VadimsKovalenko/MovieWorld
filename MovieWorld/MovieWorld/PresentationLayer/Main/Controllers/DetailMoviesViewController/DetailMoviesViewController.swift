import UIKit
import AVKit

final class DetailMoviesViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let rowHeight: CGFloat = 192
        static let contentInsert: CGFloat = 16
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
    @IBOutlet private weak var likeLabel: UILabel!
    @IBOutlet private weak var dislikeLabel: UILabel!
    @IBOutlet private weak var detailVideoImageView: UIImageView!
    @IBOutlet private weak var detailMoviesCollectionView: UICollectionView!
    
    // MARK: Properties
    
    private lazy var bookMark: UIBarButtonItem = {
        let bookMark = UIBarButtonItem()
        bookMark.image = UIImage(systemName: "bookmark")
        bookMark.target = self
        bookMark.action = .some(#selector(bookMarkButtonPressed(_:)))
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
        navigationItem.backButtonTitle = ""
        navigationController?.navigationBar.prefersLargeTitles = false
        castTableView.register(
            UINib(nibName: CastTableViewCell.reuseIdentifier,
                  bundle: nil),
            forCellReuseIdentifier: CastTableViewCell.reuseIdentifier)
        castTableView.rowHeight = Constans.rowHeight
        detailMoviesCollectionView.register(
            UINib(nibName: TrailersAndGalleryCollectionViewCell.reuseIdentifier,
                  bundle: nil),
            forCellWithReuseIdentifier: TrailersAndGalleryCollectionViewCell.reuseIdentifier)
        detailMoviesCollectionView.contentInset.left = Constans.contentInsert
        detailMoviesCollectionView.contentInset.right = Constans.contentInsert
        detailImageView.image = movies.first?.image
        detailVideoImageView.image = movies.first?.image
        detailNameLabel.text = movies.first?.name
        detailDateLabel.text = movies.first?.date
        detailDateLabel.text = movies.first?.genre
        detailScoreLabel.text = "IMDB \(movies.first?.ratingIMDB ?? "--"), KP \(movies.first?.ratingKP ?? "--")"
    }
    
    // MARK: Actions
    
    @IBAction private func bookMarkButtonPressed(_ barButtonPressed: UIBarButtonItem) {
    }
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        guard let video = URL(string: "http://techslides.com/demos/sample-videos/small.mp4") else { return }
        let player = AVPlayer(url: video)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        present(
            playerViewController,
            animated: true) {
            playerViewController.player?.play()
        }
    }
    
    @IBAction func likeButtonPressed(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func dislikeButtonPressed(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}

// MARK: - UITableViewDataSource
extension DetailMoviesViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        movies.count
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

// MARK: - UICollectionViewDelegate
extension DetailMoviesViewController: UICollectionViewDelegate {
    
}

// MARK: - UICollectionViewDataSource
extension DetailMoviesViewController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        movies.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: TrailersAndGalleryCollectionViewCell.reuseIdentifier,
                for: indexPath) as? TrailersAndGalleryCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.delegate = self
        cell.configure(model: movies[indexPath.item])
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

// MARK: - TrailersAndGalleryCollectionViewCellDelegate
extension DetailMoviesViewController: TrailersAndGalleryCollectionViewCellDelegate {
    func openVideoPressed(_ string: String) {
        guard let video = URL(string: string) else { return }
        let player = AVPlayer(url: video)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        present(
            playerViewController,
            animated: true) {
            playerViewController.player?.play()
        }
    }
}
