import UIKit

final class CastDetailCollectionViewCell: UICollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var castImageView: UIImageView!
    @IBOutlet private weak var castDescriptionLabel: UILabel!
    @IBOutlet private weak var castDateAndGenreLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "CastDetailCollectionViewCell"
    
    // MARK: Actions
    
    func configure(model: Filmography) {
        castImageView.image = model.image
        castDescriptionLabel.text = model.name
        castDateAndGenreLabel.text = "\(model.date), \(model.genre)"
    }
}
