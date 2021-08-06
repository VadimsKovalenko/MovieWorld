import UIKit

final class SearchTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    
    @IBOutlet private weak var imageViewSearch: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!
    @IBOutlet private weak var scoreLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "HistoryTableViewCell"
    
    // MARK: Actions
    
    func configure(model: Movie) {
        
    }
}
