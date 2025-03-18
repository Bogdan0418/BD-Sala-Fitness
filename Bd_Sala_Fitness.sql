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

-- Inserarea datelor în tabelul Abonamente
INSERT INTO Abonamente VALUES (1, 'Standard', 30, 100.00);
INSERT INTO Abonamente VALUES (2, 'Premium', 60, 180.00);
INSERT INTO Abonamente VALUES (3, 'VIP', 90, 250.00);
INSERT INTO Abonamente VALUES (4, 'Standard Plus', 45, 130.00);
INSERT INTO Abonamente VALUES (5, 'Premium Plus', 75, 210.00);

-- Inserarea datelor în tabelul Antrenori
INSERT INTO Antrenori VALUES (1, 'Popescu', 'Ion', 'Fitness', '0722123456', 'ion.popescu@gmail.com');
INSERT INTO Antrenori VALUES (2, 'Ionescu', 'Maria', 'Yoga', '0722987654', 'maria.ionescu@yahoo.com');
INSERT INTO Antrenori VALUES (3, 'Radu', 'Andrei', 'Crossfit', '0733123456', 'andrei.radu@hotmail.com');
INSERT INTO Antrenori VALUES (4, 'Gheorghe', 'Elena', 'Pilates', '0756123456', 'elena.gheorghe@gmail.com');
INSERT INTO Antrenori VALUES (5, 'Dumitru', 'Vlad', 'Bodybuilding', '0722567890', 'vlad.dumitru@yahoo.com');

-- Inserarea datelor în tabelul Echipamente
INSERT INTO Echipamente VALUES (1, 'Banda de alergat', 'Banda electrica cu viteza reglabila', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Activ');
INSERT INTO Echipamente VALUES (2, 'Gantere', 'Set gantere ajustabile', TO_DATE('2022-03-15', 'YYYY-MM-DD'), 'Activ');
INSERT INTO Echipamente VALUES (3, 'Bicicleta stationara', 'Bicicleta cu afisaj digital', TO_DATE('2021-07-20', 'YYYY-MM-DD'), 'Activ');
INSERT INTO Echipamente VALUES (4, 'Aparat multifunctional', 'Aparat pentru antrenament full-body', TO_DATE('2020-11-25', 'YYYY-MM-DD'), 'Inactiv');
INSERT INTO Echipamente VALUES (5, 'Saltea fitness', 'Saltea antiderapanta', TO_DATE('2023-06-30', 'YYYY-MM-DD'), 'Activ');

-- Inserarea datelor în tabelul Clienti1
INSERT INTO Clienti1 VALUES (1, 'Popa', 'Daniel', TO_DATE('1990-05-15', 'YYYY-MM-DD'), '0745123456', 'daniel.popa@gmail.com');
INSERT INTO Clienti1 VALUES (2, 'Ionescu', 'Ana', TO_DATE('1985-08-10', 'YYYY-MM-DD'), '0734123456', 'ana.ionescu@yahoo.com');
INSERT INTO Clienti1 VALUES (3, 'Radu', 'George', TO_DATE('1995-12-20', 'YYYY-MM-DD'), '0765123456', 'george.radu@hotmail.com');
INSERT INTO Clienti1 VALUES (4, 'Dumitrescu', 'Raluca', TO_DATE('1988-03-05', 'YYYY-MM-DD'), '0756123456', 'raluca.dumitrescu@gmail.com');
INSERT INTO Clienti1 VALUES (5, 'Marin', 'Victor', TO_DATE('1993-09-25', 'YYYY-MM-DD'), '0746987654', 'victor.marin@yahoo.com');

-- Inserarea datelor în tabelul Detalii
INSERT INTO Detalii VALUES (1, 1, 1, TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'));
INSERT INTO Detalii VALUES (2, 2, 2, TO_DATE('2023-10-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'));
INSERT INTO Detalii VALUES (3, 3, 3, TO_DATE('2023-09-01', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'));
INSERT INTO Detalii VALUES (4, 4, 4, TO_DATE('2023-10-01', 'YYYY-MM-DD'), TO_DATE('2023-11-15', 'YYYY-MM-DD'));
INSERT INTO Detalii VALUES (5, 5, 5, TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2023-11-15', 'YYYY-MM-DD'));

-- Inserarea datelor în tabelul Facturi
INSERT INTO Facturi VALUES (1, 1, TO_DATE('2023-11-01', 'YYYY-MM-DD'), 100.00, 'Card');
INSERT INTO Facturi VALUES (2, 2, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 180.00, 'Numerar');
INSERT INTO Facturi VALUES (3, 3, TO_DATE('2023-09-01', 'YYYY-MM-DD'), 250.00, 'Transfer');
INSERT INTO Facturi VALUES (4, 4, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 130.00, 'Card');
INSERT INTO Facturi VALUES (5, 5, TO_DATE('2023-08-01', 'YYYY-MM-DD'), 210.00, 'Numerar');


-- Inserarea datelor în tabelul Sedinte
INSERT INTO Sedinte VALUES (1, TO_DATE('2023-11-10', 'YYYY-MM-DD'), 60, 1, 1);
INSERT INTO Sedinte VALUES (2, TO_DATE('2023-11-11', 'YYYY-MM-DD'), 45, 2, 2);
INSERT INTO Sedinte VALUES (3, TO_DATE('2023-11-12', 'YYYY-MM-DD'), 90, 3, 3);
INSERT INTO Sedinte VALUES (4, TO_DATE('2023-11-13', 'YYYY-MM-DD'), 30, 4, 4);
INSERT INTO Sedinte VALUES (5, TO_DATE('2023-11-14', 'YYYY-MM-DD'), 60, 5, 5);

-- Inserarea datelor în tabelul Sedinte_Echipamente
INSERT INTO Sedinte_Echipamente VALUES (1, 1);
INSERT INTO Sedinte_Echipamente VALUES (2, 2);
INSERT INTO Sedinte_Echipamente VALUES (3, 3);
INSERT INTO Sedinte_Echipamente VALUES (4, 4);
INSERT INTO Sedinte_Echipamente VALUES (5, 5);
