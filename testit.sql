--Opettajat, joiden opintojakson nimessa mainitaan automaatio
SELECT Opettaja.Nimi, Opettaja.YksikkoId, Opintojakso.Nimi
FROM Opettaja
JOIN Opintojakso ON Opintojakso.OpettajaId = Opettaja.Id
WHERE Opintojakso.Nimi LIKE '%Automaatio%';

--Missa koulutusyksikossa opiskelijat sukunimeltaan Pouttu opiskelevat?
SELECT Opiskelija.Nimi, Koulutusyksikko.Yksikko
FROM Koulutusyksikko
JOIN OpiskelijanHaku ON OpiskelijanHaku.Koulutusyksikkoid = Koulutusyksikko.Id
JOIN Opiskelija ON Opiskelija.Id = OpiskelijanHaku.Opiskelijaid
WHERE Opiskelija.Nimi LIKE '%Pouttu%';

--Opiskelijat, jotka osallistuvat kayttoliittymat-opintojaksolle
SELECT Opiskelija.Nimi, Opiskelija.Id, Opintojakso.Nimi
FROM Opiskelija
JOIN OpiskelijanOpintojakso ON OpiskelijanOpintojakso.OpiskelijaId = Opiskelija.Id
JOIN Opintojakso ON Opintojakso.Id = OpiskelijanOpintojakso.OpintojaksoId
WHERE Opintojakso.Nimi LIKE '%liitty%';

--Mitka opintojaksot liittyvat koulutusyksikkoon informaatioteknologia?
SELECT Opintojakso.Nimi, Koulutusyksikko.Yksikko
FROM Opintojakso
JOIN Opettaja ON Opettaja.Id = Opintojakso.OpettajaId
JOIN Koulutusyksikko ON Koulutusyksikko.Id = Opettaja.YksikkoId
WHERE Koulutusyksikko.Yksikko LIKE '%Info%';