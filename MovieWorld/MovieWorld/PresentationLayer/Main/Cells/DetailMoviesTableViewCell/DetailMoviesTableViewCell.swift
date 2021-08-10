import UIKit

final class DetailMoviesTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    
    @IBOutlet private weak var detailImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!
    @IBOutlet private weak var scoreLabel: UILabel!
    
    // MARK: Properties
    
    static let reuseIdentifier = "DetailMoviesTableViewCell"
    
    // MARK: Actions
    
    func configure(model: Movie) {
        imageView?.image = model.image
        titleLabel.text = model.name
        dateLabel.text = model.dateAndGenre
        genreLabel.text = model.dateAndGenre
        scoreLabel.text = "IMDB \(model.ratingIMDB), KP \(model.ratingKP)"
    }
}
