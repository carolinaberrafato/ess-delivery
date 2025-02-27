Feature: Exibir historico de pedidos
    As a cliente com pedidos já concluídos
    I want to salvar informações dos pedidos
    So that eu possa vizualizar um histórico de pedidos 

Scenario: visualizando a página de histórico de pedido vazia
    Given Estou logado como “usuário” com login “severino” e senha “senha” 
    And não fiz nenhum pedido
    When eu acesso a página de “histórico de pedido”
    Then eu não vejo nenhum já pedido feito anteriormente

Scenario: visualizando a página de histórico de pedido não vazia
    Given Estou logado como “usuário” com login “severino” e senha “senha” 
    And fiz apenas dois pedido, uma "parmegiana" e um “yakisoba”
    When eu acesso a página de “histórico de pedido”
    Then eu vejo dois pedidos no quais são “parmegiana” e “yakisoba”

Scenario: visualizando a página de histórico de pedido com filtro
    Given Estou logado como “usuário” com login “severino” e senha “senha”
    And estou na página de “histórico de pedidos”
    When eu filtro por restaurante “pizzaria atlântico”
    Then eu vejo apenas pedidos feito no restaurante “pizzaria atlântico”
	
Scenario: fazendo novamente um pedido pelo histórico de pedidos
    Given Estou logado como “usuário” com login “severino” e senha “senha”
    And estou na página de “histórico de pedidos”
    And fiz um pedido de id “3”
    When eu acesso o pedido de id “3”
    And eu peço novamente o pedido de id “3” 
    Then eu sou redirecionado para a página de “carrinho de compra”