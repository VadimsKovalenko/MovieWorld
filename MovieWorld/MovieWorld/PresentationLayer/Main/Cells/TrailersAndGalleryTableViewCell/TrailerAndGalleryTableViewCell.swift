import UIKit

final class TrailerAndGalleryTableViewCell: UITableViewCell {
    
    // MARK: Constans
    
    private enum Constans {
        static let contentInsert: CGFloat = 16
    }
    
    // MARK: Properties
    
    static let reuseIdentifier = "TrailersAndGalleryCollectionViewCell"
    
    // MARK: IBOutlets
    
  //  @IBOutlet private weak var trailerAndGalleryCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionViewCell()
    }
    
    private func setupCollectionViewCell() {
//        trailerAndGalleryCollectionView.register(
//            UINib(nibName: TrailersAndGalleryCollectionViewCell.reuseIdentifier,
//                  bundle: nil),
//            forCellWithReuseIdentifier: TrailersAndGalleryCollectionViewCell.reuseIdentifier)
//        trailerAndGalleryCollectionView.contentInset.left = Constans.contentInsert
//        trailerAndGalleryCollectionView.contentInset.right = Constans.contentInsert
    }
    
}

// MARK: - UICollectionViewDelegate
extension TrailerAndGalleryTableViewCell: UICollectionViewDelegate {
    
}

// MARK: - UICollectionViewDataSource
extension TrailerAndGalleryTableViewCell: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        UICollectionViewCell()
    }
}
