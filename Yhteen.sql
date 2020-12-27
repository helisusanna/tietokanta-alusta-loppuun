IF NOT EXISTS (SELECT * FROM sys.databases WHERE name='Koulu')
BEGIN
	CREATE DATABASE Koulu
	PRINT 'Koulu tietokanta luotu.'
END
ELSE
	PRINT 'Oho. Koulu tietokanta on jo olemassa.'
GO
USE[Koulu]
GO
:setvar path "C:\Users\heli\OneDrive - Kaakkois-Suomen ammattikorkeakoulu Oy\Tiedostot\SQL Server Management Studio\tietokannat\harjoitus10\Koulu"
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME =N'Koulutusala')
BEGIN
	:r $(path)\LuoKoulutusala.sql
	PRINT 'Taulu Koulutusala luotiin.'
END
ELSE
	PRINT 'Taulu Koulutusala oli jo olemassa.'
GO

IF NOT EXISTS (SELECT * FROM Koulutusala)
BEGIN
	:r $(path)\LisaaKoulutusala.sql
	PRINT 'Sis�lt� Koulutusala tauluun on lis�tty.'
END
ELSE
	PRINT 'Sis�lt� Koulutusala taulussa oli jo olemassa.'
GO

:setvar path "C:\Users\heli\OneDrive - Kaakkois-Suomen ammattikorkeakoulu Oy\Tiedostot\SQL Server Management Studio\tietokannat\harjoitus10\Koulu"
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME =N'Koulutusyksikko')
BEGIN
	:r $(path)\LuoKoulutusyksikko.sql
	PRINT 'Taulu Koulutusyksikko luotiin.'
END
ELSE
	PRINT 'Taulu Koulutusyksikko oli jo olemassa.'
GO

IF NOT EXISTS (SELECT * FROM Koulutusyksikko)
BEGIN
	:r $(path)\LisaaKoulutusyksikko.sql
	PRINT 'Sis�lt� Koulutusyksikko tauluun on lis�tty.'
END
ELSE
	PRINT 'Sis�lt� Koulutusyksikko taulussa oli jo olemassa.'
GO

:setvar path "C:\Users\heli\OneDrive - Kaakkois-Suomen ammattikorkeakoulu Oy\Tiedostot\SQL Server Management Studio\tietokannat\harjoitus10\Koulu"
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME =N'Opettaja')
BEGIN
	:r $(path)\LuoOpettaja.sql
	PRINT 'Taulu Opettaja luotiin.'
END
ELSE
	PRINT 'Taulu Opettaja oli jo olemassa.'
GO

IF NOT EXISTS (SELECT * FROM Opettaja)
BEGIN
	:r $(path)\LisaaOpettaja.sql
	PRINT 'Sis�lt� Opettaja tauluun on lis�tty.'
END
ELSE
	PRINT 'Sis�lt� Opettaja taulussa oli jo olemassa.'
GO

:setvar path "C:\Users\heli\OneDrive - Kaakkois-Suomen ammattikorkeakoulu Oy\Tiedostot\SQL Server Management Studio\tietokannat\harjoitus10\Koulu"
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME =N'Opintojakso')
BEGIN
	:r $(path)\LuoOpintojakso.sql
	PRINT 'Taulu Opintojakso luotiin.'
END
ELSE
	PRINT 'Taulu Opettaja oli jo olemassa.'
GO

IF NOT EXISTS (SELECT * FROM Opintojakso)
BEGIN
	:r $(path)\LisaaOpintojakso.sql
	PRINT 'Sis�lt� Opintojakso tauluun on lis�tty.'
END
ELSE
	PRINT 'Sis�lt� Opintojakso taulussa oli jo olemassa.'
GO

:setvar path "C:\Users\heli\OneDrive - Kaakkois-Suomen ammattikorkeakoulu Oy\Tiedostot\SQL Server Management Studio\tietokannat\harjoitus10\Koulu"
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME =N'Opiskelija')
BEGIN
	:r $(path)\LuoOpiskelija.sql
	PRINT 'Taulu Opiskelija luotiin.'
END
ELSE
	PRINT 'Taulu Opiskelija oli jo olemassa.'
GO

IF NOT EXISTS (SELECT * FROM Opiskelija)
BEGIN
	:r $(path)\LisaaOpiskelija.sql
	PRINT 'Sis�lt� Opiskelija tauluun on lis�tty.'
END
ELSE
	PRINT 'Sis�lt� Opiskelija taulussa oli jo olemassa.'
GO

:setvar path "C:\Users\heli\OneDrive - Kaakkois-Suomen ammattikorkeakoulu Oy\Tiedostot\SQL Server Management Studio\tietokannat\harjoitus10\Koulu"
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME =N'OpiskelijanHaku')
BEGIN
	:r $(path)\LuoOpiskelijanHaku.sql
	PRINT 'Taulu OpiskelijanHaku luotiin.'
END
ELSE
	PRINT 'Taulu OpiskelijanHaku oli jo olemassa.'
GO

IF NOT EXISTS (SELECT * FROM OpiskelijanHaku)
BEGIN
	:r $(path)\LisaaOpiskelijanHaku.sql
	PRINT 'Sis�lt� OpiskelijanHaku tauluun on lis�tty.'
END
ELSE
	PRINT 'Sis�lt� OpiskelijanHaku taulussa oli jo olemassa.'
GO

:setvar path "C:\Users\heli\OneDrive - Kaakkois-Suomen ammattikorkeakoulu Oy\Tiedostot\SQL Server Management Studio\tietokannat\harjoitus10\Koulu"
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME =N'OpiskelijanOpintojakso')
BEGIN
	:r $(path)\LuoOpiskelijanOpintojakso.sql
	PRINT 'Taulu OpiskelijanOpintojaksoluotiin.'
END
ELSE
	PRINT 'Taulu OpiskelijanOpintojakso oli jo olemassa.'
GO

IF NOT EXISTS (SELECT * FROM OpiskelijanOpintojakso)
BEGIN
	:r $(path)\LisaaOpiskelijanOpintojakso.sql
	PRINT 'Sis�lt� OpiskelijanOpintojakso tauluun on lis�tty.'
END
ELSE
	PRINT 'Sis�lt� OpiskelijanOpintojakso taulussa oli jo olemassa.'
GO