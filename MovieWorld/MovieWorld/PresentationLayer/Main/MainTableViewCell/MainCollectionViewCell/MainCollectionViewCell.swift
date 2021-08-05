import UIKit

final class MainCollectionViewCell: UICollectionViewCell {

    // MARK: IBOutlets
    
    @IBOutlet private weak var movieImageView: UIImageView!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var dateAndGenreLabel: UILabel!
    
    // MARK: Actions
    
    func configure(model: MainMovie) {
        movieImageView.image = model.image
        descriptionLabel.text = model.descriptionLabel
        dateAndGenreLabel.text = model.dateAndGenreLabel
    }
}

struct MainMovie {
    var image: UIImage
    var descriptionLabel: String
    var dateAndGenreLabel: String
}
