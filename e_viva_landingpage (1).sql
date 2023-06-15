-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jun-2023 às 17:27
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
  `tipo` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefone` text NOT NULL,
  `endereco` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `privacidade` enum('on','off') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`id`, `nome_instituicao`, `tipo`, `email`, `telefone`, `endereco`, `create_at`, `update_at`, `delete_at`, `privacidade`) VALUES
(1, 'Joel Gonga', '', 'joelgonga2020@gmail.com', '2147483647', 'Zango 2, Rua da policia mindef', '2023-06-15 13:59:00', NULL, NULL, 'on'),
(2, 'Clinica Jucineth', '', 'joelgonga2020@gmail.com', '2147483647', 'Zango 2, Rua da policia mindef', '2023-06-15 14:46:02', NULL, NULL, 'on');

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissional_autonomo`
--

CREATE TABLE `profissional_autonomo` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `telefone` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `area` text NOT NULL,
  `privacidade` enum('on','off') DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `profissional_autonomo`
--

INSERT INTO `profissional_autonomo` (`id`, `nome`, `telefone`, `email`, `area`, `privacidade`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'Joel Gonga', '2147483647', 'joelgonga2020@gmail.com', 'OFTAMOLOGIA', '', '2023-06-15 15:16:35', NULL, NULL),
(2, 'Joel Gonga', '2147483647', 'joelgonga2020@gmail.com', 'OFTAMOLOGIA', '', '2023-06-15 15:17:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinario`
--

CREATE TABLE `veterinario` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `telefone` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `Profissao` text NOT NULL,
  `privacidade` enum('on','off') DEFAULT NULL,
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `profissional_autonomo`
--
ALTER TABLE `profissional_autonomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
