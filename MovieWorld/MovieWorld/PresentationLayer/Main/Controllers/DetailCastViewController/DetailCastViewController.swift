import UIKit

final class DetailCastViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var detailCastImageView: UIImageView!
    @IBOutlet private weak var detailCastFirstNameLabel: UILabel!
    @IBOutlet private weak var detailCastLastNameLabel: UILabel!
    @IBOutlet private weak var detailCastDateLabel: UILabel!
    @IBOutlet private weak var detailCastTableView: UITableView!
    @IBOutlet private weak var detailCastTextView: UITextView!
    
    
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
        navigationItem.backButtonTitle = ""
        navigationController?.navigationBar.prefersLargeTitles = true
        guard let acter = movies.first?.acter.first else { return }
        detailCastImageView.image = acter.image
        detailCastFirstNameLabel.text = acter.firstName
        detailCastLastNameLabel.text = acter.lastName
        detailCastTableView.register(
            UINib(nibName: CastDetailTableViewCell.reuseIdentifier,
                  bundle: nil),
            forCellReuseIdentifier: CastDetailTableViewCell.reuseIdentifier)
    }
    
    // MARK: Actions
    
    @IBAction private func bookMarkButtonPressed(_ barButtonPressed: UIBarButtonItem) {
        
    }
}

// MARK: - UITableViewDelegate
extension DetailCastViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension DetailCastViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: CastDetailTableViewCell.reuseIdentifier,
                for: indexPath) as? CastDetailTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: movies[indexPath.row])
        return cell
    }
}
