import UIKit

final class MainTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    static let reuseIdentifier = "MainTableViewCell"
    var movies = [Movie]()

    // MARK: IBOutlets
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
           super.awakeFromNib()
        mainCollectionView.register(UINib(nibName: MainCollectionViewCell.reuseIdentifier, bundle: nil),
                                    forCellWithReuseIdentifier: MainCollectionViewCell.reuseIdentifier)
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.reloadData()
       }
    
    // MARK: IBActions
    
    @IBAction func allButtonPressed(_ sender: UIButton) {
    }
    
    // MARK: Flow functions
    
    func configure(model: MainMovieSection) {
        titleLabel.text = model.title
        movies = model.movies
        
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
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AppConstans.mainCollectionViewCellIdentifier,
                                                            for: indexPath) as? MainCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(model: movies[indexPath.item])
        cell.backgroundColor = .red
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension MainTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 150, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        5
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        5
    }
}
