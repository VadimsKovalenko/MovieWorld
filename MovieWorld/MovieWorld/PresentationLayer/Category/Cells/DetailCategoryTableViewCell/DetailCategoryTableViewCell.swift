import UIKit

final class DetailCategoryTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var imageViewCategory: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!
    @IBOutlet private weak var scoreLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "DetailCategoryTableViewCell"
    
    // MARK: Actions
    
    func configure(model: Movie) {
        imageViewCategory.image = model.image
        titleLabel.text = model.name
        dateLabel.text = model.date
        genreLabel.text = model.genre
        scoreLabel.text = "IMDB \(model.ratingIMDB), KP \(model.ratingKP)"
    }
}
