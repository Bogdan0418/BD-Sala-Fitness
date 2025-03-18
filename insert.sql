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
