import UIKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🎲 GameViewController loaded")
        
        view.backgroundColor = .systemOrange
        
        let backButton = UIButton(type: .system)
        backButton.setTitle("← Назад", for: .normal)
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        view.addSubview(backButton)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
    
    @objc private func goBack() {
        navigationController?.popViewController(animated: true)
    }
}
