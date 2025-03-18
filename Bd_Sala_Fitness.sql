-- Crearea tabelului Abonamente
CREATE TABLE Abonamente (
    id_abonament NUMBER PRIMARY KEY,
    tip_abonament VARCHAR2(30) NOT NULL,
    durata_zile NUMBER NOT NULL,
    pret NUMBER(10, 2) NOT NULL
);

-- Crearea tabelului Antrenori
CREATE TABLE Antrenori (
    id_antrenor NUMBER PRIMARY KEY,
    nume VARCHAR2(50) NOT NULL,
    prenume VARCHAR2(50) NOT NULL,
    specializare VARCHAR2(100),
    telefon VARCHAR2(15),
    email VARCHAR2(100)
);

-- Crearea tabelului Echipamente
CREATE TABLE Echipamente (
    id_echipament NUMBER PRIMARY KEY,
    nume VARCHAR2(50) NOT NULL,
    descriere VARCHAR2(200),
    data_achizitie DATE NOT NULL,
    stare VARCHAR2(20) CHECK (stare IN ('Activ', 'Inactiv'))
);


-- Crearea tabelului Clienti1
CREATE TABLE Clienti1 (
    id_client NUMBER PRIMARY KEY,
    nume VARCHAR2(50) NOT NULL,
    prenume VARCHAR2(50) NOT NULL,
    data_nasterii DATE NOT NULL,
    telefon VARCHAR2(15),
    email VARCHAR2(100)
);

-- Crearea tabelului Detalii
CREATE TABLE Detalii (
    id_detalii NUMBER PRIMARY KEY,
    id_client NUMBER NOT NULL,
    id_abonament NUMBER NOT NULL,
    data_inceput DATE NOT NULL,
    data_sfarsit DATE NOT NULL,
    CONSTRAINT fk_detalii_client FOREIGN KEY (id_client) REFERENCES Clienti1(id_client),
    CONSTRAINT fk_detalii_abonament FOREIGN KEY (id_abonament) REFERENCES Abonamente(id_abonament)
);

-- Crearea tabelului Facturi
CREATE TABLE Facturi (
    id_factura NUMBER PRIMARY KEY,
    id_detalii NUMBER NOT NULL,
    data_factura DATE NOT NULL,
    suma NUMBER(10, 2) NOT NULL,
    metoda_plata VARCHAR2(50) CHECK (metoda_plata IN ('Card', 'Numerar', 'Transfer')),
    CONSTRAINT fk_facturi_detalii FOREIGN KEY (id_detalii) REFERENCES Detalii(id_detalii)
);

-- Crearea tabelului Sedinte
CREATE TABLE Sedinte (
    id_sedinta NUMBER PRIMARY KEY,
    data_sedinta DATE NOT NULL,
    durata_minute NUMBER NOT NULL CHECK (durata_minute > 0),
    id_client NUMBER NOT NULL,
    id_antrenor NUMBER NOT NULL,
    CONSTRAINT fk_sedinte_client FOREIGN KEY (id_client) REFERENCES Clienti1(id_client),
    CONSTRAINT fk_sedinte_antrenor FOREIGN KEY (id_antrenor) REFERENCES Antrenori(id_antrenor)
);

-- Crearea tabelului Sedinte_Echipamente
CREATE TABLE Sedinte_Echipamente (
    id_sedinta NUMBER NOT NULL,
    id_echipament NUMBER NOT NULL,
    PRIMARY KEY (id_sedinta, id_echipament),
    CONSTRAINT fk_sedinte_echipamente_sedinta FOREIGN KEY (id_sedinta) REFERENCES Sedinte(id_sedinta),
    CONSTRAINT fk_sedinte_echipamente_echipament FOREIGN KEY (id_echipament) REFERENCES Echipamente(id_echipament)
);
