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
	PRINT 'Sisältö Koulutusala tauluun on lisätty.'
END
ELSE
	PRINT 'Sisältö Koulutusala taulussa oli jo olemassa.'
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
	PRINT 'Sisältö Koulutusyksikko tauluun on lisätty.'
END
ELSE
	PRINT 'Sisältö Koulutusyksikko taulussa oli jo olemassa.'
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
	PRINT 'Sisältö Opettaja tauluun on lisätty.'
END
ELSE
	PRINT 'Sisältö Opettaja taulussa oli jo olemassa.'
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
	PRINT 'Sisältö Opintojakso tauluun on lisätty.'
END
ELSE
	PRINT 'Sisältö Opintojakso taulussa oli jo olemassa.'
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
	PRINT 'Sisältö Opiskelija tauluun on lisätty.'
END
ELSE
	PRINT 'Sisältö Opiskelija taulussa oli jo olemassa.'
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
	PRINT 'Sisältö OpiskelijanHaku tauluun on lisätty.'
END
ELSE
	PRINT 'Sisältö OpiskelijanHaku taulussa oli jo olemassa.'
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
	PRINT 'Sisältö OpiskelijanOpintojakso tauluun on lisätty.'
END
ELSE
	PRINT 'Sisältö OpiskelijanOpintojakso taulussa oli jo olemassa.'
GO