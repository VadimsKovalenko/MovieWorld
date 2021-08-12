import UIKit

final class CategoryTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "CategoryTableViewCell"
    
    // MARK: Actions
    
    func configure(model: MainMovieSection) {
        titleLabel.text = model.title
    }
}
