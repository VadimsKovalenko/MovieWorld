import UIKit

final class ProfileTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "ProfileTableViewCell"
    
    // MARK: Actions
    
    func configure(model: ProfileMovie) {
        titleLabel.text = model.name
    }
}
