import UIKit

final class DetailCastViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let rowHeight: CGFloat = 276
    }
    
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
    var acters = [Acter]()
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.rightBarButtonItem = bookMark
        navigationItem.backButtonTitle = ""
        navigationController?.navigationBar.prefersLargeTitles = true
        detailCastTableView.register(
            UINib(nibName: CastDetailTableViewCell.reuseIdentifier,
                  bundle: nil),
            forCellReuseIdentifier: CastDetailTableViewCell.reuseIdentifier)
        detailCastTableView.rowHeight = Constans.rowHeight
        detailCastImageView.image = acters.first?.image
        detailCastFirstNameLabel.text = acters.first?.firstName
        detailCastLastNameLabel.text = acters.first?.lastName
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
        cell.delegate = self
        cell.configure(model: acters[indexPath.row])
        return cell
    }
}

// MARK: -
extension DetailCastViewController: CastDetailTableViewCellDelegate {
    func pushController() {
        navigationController?.popToRootViewController(animated: true)
    }
}
