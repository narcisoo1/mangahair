-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 08/09/2019 às 23:02
-- Versão do servidor: 10.4.6-MariaDB
-- Versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mangadb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Admin`
--

CREATE TABLE `Admin` (
  `admin` varchar(150) NOT NULL,
  `senha` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Calendario`
--

CREATE TABLE `Calendario` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `Calendario`
--

INSERT INTO `Calendario` (`id`, `title`, `start`, `end`) VALUES
(2, 'Eh Noix!', '2019-09-08 15:00:00', '2019-09-08 15:30:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Cliente`
--

CREATE TABLE `Cliente` (
  `nome` varchar(150) NOT NULL,
  `sobrenome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela do cliente!';

--
-- Despejando dados para a tabela `Cliente`
--

INSERT INTO `Cliente` (`nome`, `sobrenome`, `email`, `senha`) VALUES
('asdf', 'asdf', 'asdf', '1234');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`admin`);

--
-- Índices de tabela `Calendario`
--
ALTER TABLE `Calendario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
