import UIKit

final class FilterTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "FilterTableViewCell"
    
    func configure(model: Settings) {
        titleLabel.text = model.name
    }
}
