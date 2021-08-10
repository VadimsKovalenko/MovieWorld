import UIKit

final class CastCollectionViewCell: UICollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var castImageView: UIImageView!
    @IBOutlet private weak var castFirstNameLabel: UILabel!
    @IBOutlet private weak var castLastNameLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "CastCollectionViewCell"
    
    // MARK: Actions
    
    func configure(model: Acter) {
        castImageView.image = model.image
        castFirstNameLabel.text = model.firstName
        castLastNameLabel.text = model.lastName
    }
}
