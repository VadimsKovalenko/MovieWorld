import UIKit
import AVKit

protocol TrailersAndGalleryCollectionViewCellDelegate: AnyObject {
    func openVideoPressed(_ string: String)
}

final class TrailersAndGalleryCollectionViewCell: UICollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var trailersImageView: UIImageView!

    // MARK: Properties
    
    static let reuseIdentifier = "TrailersAndGalleryCollectionViewCell"
    weak var delegate: TrailersAndGalleryCollectionViewCellDelegate?

    // MARK : Actions
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        delegate?.openVideoPressed("http://techslides.com/demos/sample-videos/small.mp4")
    }
    
    func configure(model: Movie) {
        trailersImageView.image = model.image
    }
}
