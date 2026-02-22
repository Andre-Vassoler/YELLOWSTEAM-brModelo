CREATE TABLE Usuario (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    Email TEXT UNIQUE NOT NULL,
    Gamertag TEXT UNIQUE
);

CREATE TABLE Classificacao (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    faixaEtaria TEXT UNIQUE NOT NULL
);

CREATE TABLE Categoria (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT UNIQUE NOT NULL
);

CREATE TABLE Jogos (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco REAL NOT NULL,
    dataLancamento DATE,
    codClassificacao INTEGER NOT NULL REFERENCES Classificacao(codigo)
);

CREATE TABLE Extensao (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco REAL NOT NULL,
    dataLancamento DATE,
    codJogo INTEGER NOT NULL REFERENCES Jogos(codigo)
);

CREATE TABLE JogosCategoria (
    codJogo      INTEGER NOT NULL REFERENCES Jogos(codigo),
    codCategoria INTEGER NOT NULL REFERENCES Categoria(codigo),
    PRIMARY KEY (codJogo, codCategoria)
);

CREATE TABLE ListaDesejos (
    codigo     INTEGER PRIMARY KEY AUTOINCREMENT,
    codUsuario INTEGER NOT NULL REFERENCES Usuario(codigo),
    codJogo    INTEGER NOT NULL REFERENCES Jogos(codigo)
);

CREATE TABLE Carrinho (
    codigo     INTEGER PRIMARY KEY AUTOINCREMENT,
    codUsuario INTEGER NOT NULL REFERENCES Usuario(codigo),
    metodoPagamento VARCHAR(50) NOT NULL,
    dataPagamento   DATE,
    valorTotal      REAL
);

CREATE TABLE ItemCarrinho (
    codigo      INTEGER PRIMARY KEY AUTOINCREMENT,
    codCarrinho INTEGER NOT NULL REFERENCES Carrinho(codigo),
    codJogo     INTEGER NOT NULL REFERENCES Jogos(codigo),
    quantidade  INTEGER NOT NULL DEFAULT 1
);
