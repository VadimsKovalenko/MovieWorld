import UIKit

final class MainCastTableViewCell: UITableViewCell {
    
    // MARK: IBOutelts
    
    @IBOutlet private weak var castImageView: UIImageView!
    @IBOutlet private weak var castFirstNameLabel: UILabel!
    @IBOutlet private weak var castLastNameLabel: UILabel!
    @IBOutlet private weak var castDateLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "MainCastTableViewCell"
    
    // MARK: Actions
    
    func configure(model: Acter) {
        castImageView.image = model.image
        castFirstNameLabel.text = model.firstName
        castLastNameLabel.text = model.lastName
    }
}
