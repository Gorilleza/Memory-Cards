import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Фон
                LinearGradient(
                    gradient: Gradient(colors: [.blue, .purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack(spacing: 40) {
                    // Заголовок
                    VStack(spacing: 10) {
                        Text("🎴")
                            .font(.system(size: 80))
                        Text("MEMORY CARDS")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                    }
                    
                    // Кнопки
                    VStack(spacing: 20) {
                        NavigationLink(destination: GameView()) {
                            Text("НАЧАТЬ ИГРУ")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .padding()
                                .frame(width: 250)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(radius: 5)
                        }
                        
                        Button(action: {
                            showRules()
                        }) {
                            Text("ПРАВИЛА ИГРЫ")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 250)
                                .background(Color.blue.opacity(0.3))
                                .cornerRadius(15)
                        }
                    }
                }
                .padding()
            }
        }
    }
    
    private func showRules() {
        // Временное решение - покажем alert когда научимся
        print("Правила: Найди все пары одинаковых карточек!")
    }
}

struct GameView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Text("🎮 ИГРОВОЙ ЭКРАН")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                
                Text("Здесь будет игра!")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                
                Button("← НАЗАД") {
                    presentationMode.wrappedValue.dismiss()
                }
                .font(.headline)
                .foregroundColor(.orange)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ContentView()
}
