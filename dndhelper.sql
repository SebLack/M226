-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Dez 2018 um 11:30
-- Server-Version: 10.1.32-MariaDB
-- PHP-Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `dndhelper`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `characters`
--

CREATE TABLE `characters` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf16_german2_ci NOT NULL,
  `Class` varchar(50) COLLATE utf16_german2_ci NOT NULL,
  `Level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_german2_ci;

--
-- Daten für Tabelle `characters`
--

INSERT INTO `characters` (`Id`, `Name`, `Class`, `Level`) VALUES
(1, 'Sebastian Pieterhausen', 'Warlock, Paladin', 10),
(2, 'Mike Peterhausen', 'Ranger, Archer', 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `characterstosessions`
--

CREATE TABLE `characterstosessions` (
  `Id_Sessions` int(11) NOT NULL,
  `Id_Players` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_german2_ci;

--
-- Daten für Tabelle `characterstosessions`
--

INSERT INTO `characterstosessions` (`Id_Sessions`, `Id_Players`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sessions`
--

CREATE TABLE `sessions` (
  `Id` int(11) NOT NULL,
  `Dm_Name` varchar(20) COLLATE utf16_german2_ci NOT NULL,
  `Plot` text COLLATE utf16_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_german2_ci;

--
-- Daten für Tabelle `sessions`
--

INSERT INTO `sessions` (`Id`, `Dm_Name`, `Plot`) VALUES
(1, 'Dungeon Marco', 'Video bietet eine leistungsstarke Möglichkeit zur Unterstützung Ihres Standpunkts. Wenn Sie auf \"Onlinevideo\" klicken, können Sie den Einbettungscode für das Video einfügen, das hinzugefügt werden soll. Sie können auch ein Stichwort eingeben, um online nach dem Videoclip zu suchen, der optimal zu Ihrem Dokument passt.\r\nDamit Ihr Dokument ein professionelles Aussehen erhält, stellt Word einander ergänzende Designs für Kopfzeile, Fußzeile, Deckblatt und Textfelder zur Verfügung. Beispielsweise können Sie ein passendes Deckblatt mit Kopfzeile und Randleiste hinzufügen. Klicken Sie auf \"Einfügen\", und wählen Sie dann die gewünschten Elemente aus den verschiedenen Katalogen aus.');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`Id`);

--
-- Indizes für die Tabelle `characterstosessions`
--
ALTER TABLE `characterstosessions`
  ADD KEY `Id_Sessions` (`Id_Sessions`),
  ADD KEY `Id_Players` (`Id_Players`);

--
-- Indizes für die Tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `characters`
--
ALTER TABLE `characters`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `sessions`
--
ALTER TABLE `sessions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `characterstosessions`
--
ALTER TABLE `characterstosessions`
  ADD CONSTRAINT `characterstosessions_ibfk_1` FOREIGN KEY (`Id_Sessions`) REFERENCES `sessions` (`Id`),
  ADD CONSTRAINT `characterstosessions_ibfk_2` FOREIGN KEY (`Id_Players`) REFERENCES `characters` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
