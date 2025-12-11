CREATE TABLE `tb_medicos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `crm` varchar(15) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `turno_trabalho` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_UNIQUE` (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;