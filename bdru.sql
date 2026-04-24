-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/04/2026 às 19:16
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdru`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastrados`
--

CREATE TABLE `cadastrados` (
  `ca_id` int(11) NOT NULL,
  `ca_nome` varchar(255) NOT NULL,
  `ca_senha` varchar(6) NOT NULL,
  `ca_rm` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `saldo` double DEFAULT NULL,
  `plano` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastrados`
--

INSERT INTO `cadastrados` (`ca_id`, `ca_nome`, `ca_senha`, `ca_rm`, `cpf`, `saldo`, `plano`) VALUES
(1, 'Leticia', '1234', 0, '', 1465.06, 'Mensal estudante'),
(2, 'Bianca', 'sorvet', 0, '', NULL, ''),
(3, 'Arthur', 'gay', 123456, '123456789', NULL, ''),
(4, 'bruno', '8539', 984635, '87654312', NULL, NULL),
(5, 'Soncino', '3276', 987623, '128765', 500, NULL),
(6, 'Renata', '0987', 658712, '098723', 100, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `fu_id` int(11) NOT NULL,
  `fu_nome` varchar(255) NOT NULL,
  `fu_senha` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`fu_id`, `fu_nome`, `fu_senha`) VALUES
(1, 'Alice', '12345121'),
(2, 'Eduardo', '9876543');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastrados`
--
ALTER TABLE `cadastrados`
  ADD PRIMARY KEY (`ca_id`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`fu_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastrados`
--
ALTER TABLE `cadastrados`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `fu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
