import UIKit

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🎮 MenuViewController loaded")
        
        setupUI()
    }
    
    private func setupUI() {
        // Яркий фон чтобы сразу видеть что экран загрузился
        view.backgroundColor = .systemGreen
        
        // Заголовок
        let titleLabel = UILabel()
        titleLabel.text = "🎴 MEMORY CARDS"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 32)
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        
        // Кнопка
        let startButton = UIButton(type: .system)
        startButton.setTitle("НАЧАТЬ ИГРУ", for: .normal)
        startButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        startButton.backgroundColor = .white
        startButton.setTitleColor(.systemGreen, for: .normal)
        startButton.layer.cornerRadius = 12
        startButton.addTarget(self, action: #selector(startGame), for: .touchUpInside)
        
        // Добавляем на экран
        view.addSubview(titleLabel)
        view.addSubview(startButton)
        
        // Отключаем авто-констрейнты
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Простые констрейнты
        NSLayoutConstraint.activate([
            // Заголовок по центру
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            
            // Кнопка под заголовком
            startButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.widthAnchor.constraint(equalToConstant: 200),
            startButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        print("✅ UI setup complete")
    }
    
    @objc private func startGame() {
        print("🎯 Start game tapped")
        let gameVC = GameViewController()
        navigationController?.pushViewController(gameVC, animated: true)
    }
}
