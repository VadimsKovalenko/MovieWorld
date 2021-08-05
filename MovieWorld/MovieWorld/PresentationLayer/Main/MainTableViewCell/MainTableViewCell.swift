import UIKit

final class MainTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    var movies = [MainMovie(image: UIImage(named: "swift")!, descriptionLabel: "TestTest", dateAndGenreLabel: "TestTest 1000"),
                  MainMovie(image: UIImage(named: "swift")!, descriptionLabel: "TestTest", dateAndGenreLabel: "TestTest 1000"),
                  MainMovie(image: UIImage(named: "swift")!, descriptionLabel: "TestTest", dateAndGenreLabel: "TestTest 1000")]

    // MARK: IBOutlets
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
           super.awakeFromNib()
        mainCollectionView.register(UINib(nibName: AppConstans.mainCollectionViewCellIdentifier, bundle: nil),
                                    forCellWithReuseIdentifier: AppConstans.mainCollectionViewCellIdentifier)
        mainCollectionView.reloadData()
       }
    
    // MARK: IBActions
    
    @IBAction func allButtonPressed(_ sender: UIButton) {
    }
    
}

// MARK: - UICollectionViewDelegate
extension MainTableViewCell: UICollectionViewDelegate {
    
}

// MARK: UICollectionViewDataSource
extension MainTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AppConstans.mainCollectionViewCellIdentifier, for: indexPath) as? MainCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.configure(model: movies[indexPath.item])
        
        return cell
    }
    
    
}
