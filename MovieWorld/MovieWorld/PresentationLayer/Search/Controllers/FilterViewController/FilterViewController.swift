import UIKit

final class FilterViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Country"
        static let hue: CGFloat = 6
        static let saturation: CGFloat = 58
        static let brightness: CGFloat = 90
        static let alpha: CGFloat = 1
        static let resetButtonItem = "Reset"
    }
    
    // MARK: Properties
    
    private let resetButtonItem: UIBarButtonItem = {
        let reset = UIBarButtonItem()
        reset.title = Constans.resetButtonItem
        reset.style = .plain
        reset.action = #selector(resetButtonPressed)
        reset.tintColor = UIColor(
            hue: Constans.hue,
            saturation: Constans.saturation,
            brightness: Constans.brightness,
            alpha: Constans.alpha)
        return reset
    }()
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var filterTableView: UITableView!
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: IBActions
    
    @IBAction private func showButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction private func resetButtonPressed(_ barButtonItem: UIBarButtonItem) {
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationItem.rightBarButtonItem = resetButtonItem
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

// MARK: - UITableViewDelegate
extension FilterViewController: UITableViewDelegate {
}

// MARK: - UITableViewDataSource
extension FilterViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}
