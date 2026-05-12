 # Tela de Login - SENAI (Flutter)

 Projeto Flutter simples com telas de autenticação e cadastro criado como exemplo.

 ## Estrutura principal

 - `lib/main.dart` — implementação das telas:
	 - Splash (5s) com logo SENAI e fundo vermelho
	 - Login (logo + campos de email/senha)
	 - Cadastro (nome, sobrenome, e-mail, telefone, senha, confirmar senha)
	 - Recuperação de senha (campo e-mail)

 - `img/senai.png` — logo usada nas telas (verificar presença em `img/`)

 ## Rotas

 - `/login` — tela de login
 - `/cadastro` — tela de cadastro
 - `/recuperacao` — página de recuperação de senha

 O ponto de entrada agora é a tela de splash (abre por 5 segundos e segue para `/login`).

 ## Como executar

 Pré-requisitos: Flutter SDK instalado e configurado.

 No terminal, na pasta do projeto execute:

 ```bash
 flutter pub get
 flutter run
 ```

 Escolha o dispositivo/simulador desejado.

 ## Comportamento e estilos

 - Todos os campos têm borda cinza por padrão e ficam com borda laranja apenas quando focados (ao digitar).
 - Cabeçalho da tela principal: fundo preto com logo SENAI e texto "Login".
 - Página de cadastro: cabeçalho vermelho com logo SENAI e texto "Cadastrar-se".
 - Página de recuperação: cabeçalho azul escuro com logo SENAI e texto "Recuperação de Senha".
 - A tela de splash tem fundo vermelho, logo SENAI e indicador de progresso branco por 5 segundos.

 ## Observações sobre mudanças feitas

 Alterações recentes implementadas em `lib/main.dart`:
 - Removido `const` incorreto que causava erro em `ElevatedButton.styleFrom`.
 - Adicionadas rotas para cadastro e recuperação.
 - Implementada página de cadastro com campos conforme mock.
 - Implementada página de recuperação de senha.
 - Implementada splash inicial (5s) com loading.
 - Ajustado comportamento de foco dos campos (borda laranja somente no `focusedBorder`).
 - Removidos carregamentos intermediários: apenas a splash mostra loading.

 ## Próximos passos sugeridos

 - Adicionar validação de formulários (`Form`, `TextFormField`, validators).
 - Implementar lógica de autenticação (API ou Firebase).
 - Adicionar testes widget para as telas.
 - Melhorar acessibilidade (labels, semantics) e responsividade.

 Se quiser, eu posso:
 - Adicionar validações nos formulários agora.
 - Conectar a uma API de autenticação exemplo.
 - Criar testes automatizados básicos.

 ---

 Criado automaticamente. Para mudanças rápidas, me diga o que ajustar.
