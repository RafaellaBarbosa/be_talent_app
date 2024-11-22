
# Employee Management App

Este projeto é um aplicativo de gerenciamento de funcionários desenvolvido em Flutter. Ele utiliza o padrão MVVM (Model-View-ViewModel) com o `Provider` para separar a lógica de negócios da interface do usuário. O app apresenta uma lista de funcionários que podem ser carregados dinamicamente a partir de um serviço.

## ⚙️ Funcionalidades

- **Carregamento Dinâmico de Funcionários:** Dados dos funcionários são carregados via `UserService` e exibidos na tela.
- **Busca por Funcionários:** Filtragem de funcionários por nome, cargo ou telefone.
- **Arquitetura MVVM:** Separação da lógica de negócios e interface do usuário utilizando `ViewModel`.
- **Tela de Splash:** Uma tela inicial que redireciona para a lista de funcionários após alguns segundos.

---

## 🛠️ Tecnologias Utilizadas

- **Flutter:** Framework principal para desenvolvimento mobile.
- **Provider:** Gerenciamento de estado e injeção de dependências.
- **Dart:** Linguagem de programação utilizada no Flutter.

---

## 🚀 Como Executar o Projeto

### Pré-requisitos
- [Flutter instalado](https://docs.flutter.dev/get-started/install).
- Configuração de um emulador ou dispositivo físico para testes.

### Passos
1. Clone este repositório:
   ```bash
   git clone https://github.com/RafaellaBarbosa/be_talent_app.git
   ```
2. Navegue até a pasta do projeto:
   ```bash
   cd be_talent_app
   ```
3. Instale as dependências:
   ```bash
   flutter pub get
   ```
4. Execute o aplicativo:
   ```bash
   flutter run
   ```

---

## 📂 Estrutura de Pastas

```bash
lib/
├── core/
│   ├── utils/        # Cores, imagens e estilos reutilizáveis
│   └── services/     # Serviços (ex: UserService)
├── data/
│   └── models/       # Modelos de dados (ex: Employee)
├── viewmodels/       # Lógica e estado (ex: EmployeeViewModel)
├── views/            # Telas (ex: EmployeeScreen, SplashScreen)
└── main.dart         # Ponto de entrada do app
```

---

## 📸 Demonstração

### Splash Screen:
Tela inicial exibindo o logotipo antes de redirecionar para a lista de funcionários.

### Lista de Funcionários:
- Exibe os funcionários cadastrados.
- Permite busca por nome, cargo ou telefone.


