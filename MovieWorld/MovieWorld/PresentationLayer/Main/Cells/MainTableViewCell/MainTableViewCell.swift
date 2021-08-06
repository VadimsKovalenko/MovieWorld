import UIKit

final class MainTableViewCell: UITableViewCell {
    
    // MARK: Constans
    
    private enum Constans {
        static let contentInsert: CGFloat = 16
        
    }
    
    // MARK: Properties
    
    static let reuseIdentifier = "MainTableViewCell"
    var movies = [Movie]()

    // MARK: IBOutlets
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
           super.awakeFromNib()
        setupCollectionViewCell()
       }
    
    // MARK: IBActions
    
    @IBAction func allButtonPressed(_ sender: UIButton) {
    }
    
    // MARK: Actions
    
     func configure(model: MainMovieSection) {
        titleLabel.text = model.title
        movies = model.movies
        
    }
    
    private func setupCollectionViewCell() {
        mainCollectionView.register(UINib(nibName: MainCollectionViewCell.reuseIdentifier, bundle: nil),
                                    forCellWithReuseIdentifier: MainCollectionViewCell.reuseIdentifier)
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.contentInset.left = Constans.contentInsert
        mainCollectionView.contentInset.right = Constans.contentInsert
    }
}

// MARK: - UICollectionViewDelegate
extension MainTableViewCell: UICollectionViewDelegate {
    
}

// MARK: UICollectionViewDataSource
extension MainTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.reuseIdentifier,
                                                            for: indexPath) as? MainCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(model: movies[indexPath.item])
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension MainTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 130 , height: 237)
    }
}
