-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.31 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela banco99.cadastroprodutos
CREATE TABLE IF NOT EXISTS `cadastroprodutos` (
  `referencia` int(30) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `preco` float NOT NULL,
  `fornecedores` varchar(150) NOT NULL,
  PRIMARY KEY (`referencia`),
  KEY `FK_cadastroprodutos_fornecedor` (`fornecedores`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela banco99.cadastroprodutos: 2 rows
/*!40000 ALTER TABLE `cadastroprodutos` DISABLE KEYS */;
INSERT IGNORE INTO `cadastroprodutos` (`referencia`, `nome`, `preco`, `fornecedores`) VALUES
	(12345, 'coca', 5, 'cvi'),
	(1, 'pepsi', 4, 'ambev');
/*!40000 ALTER TABLE `cadastroprodutos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
