# YELLOWSTEAM-brModelo
A **Yellow Steam** é um sistema para venda e distribuição de jogos, permitindo que usuários gerenciem bibliotecas, criem listas de desejos e realizem compras através de carrinhos virtuais.

### Principais Funcionalidades:
* **Gestão de Usuários:** Cadastro com Gamertag e E-mail único.
* **Catálogo de Jogos:** Organização por categorias, classificação indicativa e suporte a DLCs.
* **Lista de Desejos:** Interação N:N entre usuários e jogos.
* **Sistema de Vendas:** Carrinho de compras com suporte a múltiplos métodos de pagamento (Pix, Cartão, Boleto).

## 🛠️ Tecnologias Utilizadas
* **Modelagem:** MER (Modelo Entidade-Relacionamento) e DER (Diagrama Entidade-Relacionamento).
* **Banco de Dados:** SQL (SQLite/ANSI).

## 📊 Estrutura de Dados
O banco de dados conta com as seguintes tabelas principais:
- `Usuario`
- `Jogos`
- `Categoria`
- `Classificacao`
- `Extensao (DLCs)`
- `ListaDesejos`
- `Carrinho` / `ItemCarrinho`

---
## 👥 Autores
* André Fiordiluglio Vassoler
* Antônio Carlos Florencio
* Francisco Alexandre Santos Melo
* Igor Hiroshi de Araujo Bajo
* Rafael Martins Cezar
