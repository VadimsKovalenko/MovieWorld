import UIKit

protocol CastDetailTableViewCellDelegate: AnyObject {
    func pushController()
}

final class CastDetailTableViewCell: UITableViewCell {
    
    // MARK: Constans
    
    private enum Constans {
        static let contentInsert: CGFloat = 16
    }
    
    // MARK: IBOutlets
    
    @IBOutlet weak var castDetailCollectionView: UICollectionView!
    
    // MARK: Properties
    
    static let reuseIdentifier = "CastDetailTableViewCell"
    var acters = [Filmography]()
    weak var delegate: CastDetailTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionViewCell()
    }
    
    // MARK: Actions
    
    @IBAction func castAllButtonPressed(_ sender: UIButton) {
        delegate?.pushController()
    }
    
    private func setupCollectionViewCell() {
        castDetailCollectionView.register(
            UINib(nibName: CastDetailCollectionViewCell.reuseIdentifier,
                  bundle: nil),
            forCellWithReuseIdentifier: CastDetailCollectionViewCell.reuseIdentifier)
        castDetailCollectionView.delegate = self
        castDetailCollectionView.dataSource = self
        castDetailCollectionView.contentInset.left = Constans.contentInsert
        castDetailCollectionView.contentInset.right = Constans.contentInsert
    }
    
    func configure(model: Acter) {
        acters = model.films
    }
}

// MARK: - UICollectionViewDelegate
extension CastDetailTableViewCell: UICollectionViewDelegate {
}

// MARK: - UICollectionViewDataSource
extension CastDetailTableViewCell: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        acters.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: CastDetailCollectionViewCell.reuseIdentifier,
                for: indexPath) as? CastDetailCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.configure(model: acters[indexPath.item])
        
        return cell
    }
}
