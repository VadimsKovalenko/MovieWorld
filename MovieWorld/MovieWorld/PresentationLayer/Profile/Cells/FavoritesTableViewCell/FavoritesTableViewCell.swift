import UIKit

final class FavoritesTableViewCell: UITableViewCell {
 
    // MARK: IBOutlets
    
    @IBOutlet private weak var imageViewFavorites: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!
    @IBOutlet private weak var scoreLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "FavoritesTableViewCell"
    
    // MARK: Actions
    
    func configure(model: Movie) {
        
    }
}
