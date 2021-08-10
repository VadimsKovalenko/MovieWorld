import UIKit

final class MainCollectionViewCell: UICollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var movieImageView: UIImageView!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var dateAndGenreLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "MainCollectionViewCell"
    
    // MARK: Actions
    
    func configure(model: Movie) {
        movieImageView.image = model.image
        descriptionLabel.text = model.name
        dateAndGenreLabel.text = "\(model.date), \(model.genre)"
    }
}
