import UIKit

protocol CastTableViewCellDelegate: AnyObject {
    func detailWasTapped(at section: [Acter])
    func detailWasTappedCollection(at index: Acter)
}

final class CastTableViewCell: UITableViewCell {
    
    // MARK: Constans
    
    private enum Constans {
        static let contentInsert: CGFloat = 16
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var castCollectionView: UICollectionView!
    
    // MARK: Properties
    
    static let reuseIdentifier = "CastTableViewCell"
    var acters = [Acter]()
    weak var delegate: CastTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    // MARK: Actions
    
    @IBAction func castAllButtonPressed(_ sender: UIButton) {
        delegate?.detailWasTapped(at: acters)
    }
    
    private func setupUI() {
        castCollectionView.register(UINib(nibName: CastCollectionViewCell.reuseIdentifier,
                                          bundle: nil),
                                    forCellWithReuseIdentifier: CastCollectionViewCell.reuseIdentifier)
        castCollectionView.delegate = self
        castCollectionView.dataSource = self
        castCollectionView.contentInset.left = Constans.contentInsert
        castCollectionView.contentInset.right = Constans.contentInsert
    }
    
    func configure(model: Movie) {
        acters = model.acter
    }
}

// MARK: - UICollectionViewDelegate
extension CastTableViewCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.detailWasTappedCollection(at: acters[indexPath.row])
    }
}

// MARK: - UICollectionViewDataSource
extension CastTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        acters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CastCollectionViewCell.reuseIdentifier,
                                                            for: indexPath) as? CastCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(model: acters[indexPath.row])
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension CastTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 72 , height: 124)
    }
}
