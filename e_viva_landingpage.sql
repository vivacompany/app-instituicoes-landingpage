-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Jun-2023 às 16:08
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `e_viva_landingpage`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `id` int(11) NOT NULL,
  `nome_instituicao` varchar(40) NOT NULL,
  `resposanvel` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefone` int(11) NOT NULL,
  `endereco` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `privacidade` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissional_autonomo`
--

CREATE TABLE `profissional_autonomo` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `Profissao` varchar(40) NOT NULL,
  `privacidade` tinyint(1) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinario`
--

CREATE TABLE `veterinario` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `Profissao` varchar(40) NOT NULL,
  `privacidade` tinyint(1) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `profissional_autonomo`
--
ALTER TABLE `profissional_autonomo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `profissional_autonomo`
--
ALTER TABLE `profissional_autonomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
