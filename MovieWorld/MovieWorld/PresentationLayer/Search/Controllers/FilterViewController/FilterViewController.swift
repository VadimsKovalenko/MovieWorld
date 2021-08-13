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
    var settings = [Settings(name: "Country"),
                    Settings(name: "Year")
    ]
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
    
    private func selectController(_ indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            navigationController?.pushViewController(CountryViewController(), animated: true)
        default:
            let datePicker = UIDatePicker(
                frame: CGRect(
                    x: 0,
                    y: view.frame.height / 2,
                    width: view.frame.width ,
                    height: view.frame.height / 2))
            view.addSubview(datePicker)
            
        }
    }
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationItem.rightBarButtonItem = resetButtonItem
        navigationController?.navigationBar.prefersLargeTitles = true
        filterTableView.register(
            UINib(nibName: FilterTableViewCell.reuseIdentifier,
                  bundle: nil),
            forCellReuseIdentifier: FilterTableViewCell.reuseIdentifier)
        filterTableView.tableFooterView = UIView()
    }
}

// MARK: - UITableViewDelegate
extension FilterViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       selectController(indexPath)
    }
}

// MARK: - UITableViewDataSource
extension FilterViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        settings.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: FilterTableViewCell.reuseIdentifier,
                for: indexPath) as? FilterTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: settings[indexPath.row])
        return cell
    }
}
