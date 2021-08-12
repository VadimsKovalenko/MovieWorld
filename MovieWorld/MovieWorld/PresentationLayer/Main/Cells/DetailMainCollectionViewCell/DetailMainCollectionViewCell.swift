import UIKit

final class DetailMainCollectionViewCell: UICollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var settingButton: UIButton!
    
    // MARK: Properties
    
    static let reuseIdentifier = "DetailMainCollectionViewCell"
    
    // MARK: Actions
    
    @IBAction private func settingsButtonPressed(_ sender: UIButton) {
    }
    
    func configure(model: Settings) {
        settingButton.setTitle(model.name, for: .normal)
    }
}
