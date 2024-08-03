-- nikoc18@hotmail.com
-- version 1.0
-- 2024
-- para HeidiSql
-- 02/08/2024


-- Estructura de base de datos para credicel_Mega_Autoventa
CREATE DATABASE IF NOT EXISTS `credicel_Mega_Autoventa`;
USE `credicel_Mega_Autoventa`;

-- Estructura para tabla credicel_Mega_Autoventa.Marca
CREATE TABLE IF NOT EXISTS `Marca` (
  `Id_Marca` int(11) NOT NULL AUTO_INCREMENT,
  `Marca` varchar(50) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Marca`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Datos para la tabla credicel_Mega_Autoventa.Marca: 
INSERT INTO `Marca` (`Id_Marca`, `Marca`, `Cantidad`) VALUES
	(1, 'Kia', 238),
	(2, 'Mazda', 249),
	(3, 'Toyota', 479),
	(4, 'Renault', 355),
	(5, 'Chevrolet', 246),
	(6, 'Suzuki', 103),
	(7, 'Foton', 37),
	(8, 'Ford', 101),
	(9, 'Hyundai', 49),
	(10, 'Volkswagen', 132);

-- Estructura para tabla credicel_Mega_Autoventa.Modelo
CREATE TABLE IF NOT EXISTS `Modelo` (
  `Id_Modelo` int(11) NOT NULL AUTO_INCREMENT,
  `Modelo` varchar(50) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Precio_Unitario` float DEFAULT NULL,
  PRIMARY KEY (`Id_Modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Datos para la tabla credicel_Mega_Autoventa.Modelo: ~25 rows (aproximadamente)
INSERT INTO `Modelo` (`Id_Modelo`, `Modelo`, `Marca`, `Precio_Unitario`) VALUES
	(1, 'Kia Picanto', 'Kia', 64000000),
	(2, 'Mazda CX-30', 'Mazda', 120000000),
	(3, 'Toyota Fortuner', 'Toyota', 220000000),
	(4, 'Renault Duster', 'Renault', 88000000),
	(5, 'Toyota Hilux', 'Toyota', 180000000),
	(6, 'Chevrolet Onix', 'Chevrolet', 72000000),
	(7, 'Mazda 2', 'Mazda', 80000000),
	(8, 'Suzuki Swift', 'Suzuki', 72000000),
	(9, 'Chevrolet Tracker', 'Chevrolet', 100000000),
	(10, 'Foton BJ', 'Foton', 100000000),
	(11, 'Ford Escape', 'Ford', 140000000),
	(12, 'Renault Kwid', 'Renault', 60000000),
	(13, 'Toyota Prado', 'Toyota', 280000000),
	(14, 'Chevrolet Joy', 'Chevrolet', 60000000),
	(15, 'Toyota Corolla', 'Toyota', 112000000),
	(16, 'Renault Stepway', 'Renault', 68000000),
	(17, 'Renault Logan', 'Renault', 64000000),
	(18, 'Hyundai Tucson', 'Hyundai', 140000000),
	(19, 'Toyota Corolla Cross', 'Toyota', 120000000),
	(20, 'Renault Sandero', 'Renault', 60000000),
	(21, 'Volkswagen Gol', 'Volkswagen', 60000000),
	(22, 'Volkswagen Voyage', 'Volkswagen', 68000000),
	(23, 'Kia Stonic', 'Kia', 100000000),
	(24, 'Kia Rio', 'Kia', 80000000),
	(25, 'Mazda CX-5', 'Mazda', 140000000);

-- Estructura para tabla credicel_Mega_Autoventa.Sede_Departamento
CREATE TABLE IF NOT EXISTS `Sede_Departamento` (
  `Id_Departamento` int(11) NOT NULL AUTO_INCREMENT,
  `Departamento` varchar(50) DEFAULT NULL,
  `Ventas` float DEFAULT NULL,
  PRIMARY KEY (`Id_Departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- Datos para la tabla credicel_Mega_Autoventa.Sede_Departamento: ~5 rows (aproximadamente)
INSERT INTO `Sede_Departamento` (`Id_Departamento`, `Departamento`, `Ventas`) VALUES
	(1, 'Antioquia', 60716000000),
	(2, 'Valle del Cauca', 53728000000),
	(3, 'Santander', 28724000000),
	(4, 'Cundinamarca', 27960000000),
	(5, 'Atlantico', 42784000000);

-- Estructura para tabla credicel_Mega_Autoventa.Tipo_Vehiculo
CREATE TABLE IF NOT EXISTS `Tipo_Vehiculo` (
  `Id_Tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_Vehiculo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- Datos para la tabla credicel_Mega_Autoventa.Tipo_Vehiculo: ~4 rows (aproximadamente)
INSERT INTO `Tipo_Vehiculo` (`Id_Tipo`, `Tipo_Vehiculo`, `Cantidad`) VALUES
	(1, 'Automoviles', 1026),
	(2, 'Suv', 206),
	(3, 'Comerciales_Carga', 37),
	(4, 'Camioneta', 720);

-- Estructura para tabla credicel_Mega_Autoventa.Ventas
CREATE TABLE IF NOT EXISTS `Ventas` (
  `Id_Venta` int(11) NOT NULL AUTO_INCREMENT,
  `Vehiculo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Tipo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Departamento` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Enero` int(11) DEFAULT NULL,
  `Febrero` int(11) DEFAULT NULL,
  `Marzo` int(11) DEFAULT NULL,
  `Abril` int(11) DEFAULT NULL,
  `Mayo` int(11) DEFAULT NULL,
  `Junio` int(11) DEFAULT NULL,
  `Julio` int(11) DEFAULT NULL,
  `Agosto` int(11) DEFAULT NULL,
  `Septiembre` int(11) DEFAULT NULL,
  `Octubre` int(11) DEFAULT NULL,
  `Noviembre` int(11) DEFAULT NULL,
  `Diciembre` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Venta`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- Datos para la tabla credicel_Mega_Autoventa.Ventas: ~96 rows (aproximadamente)
INSERT INTO `Ventas` (`Id_Venta`, `Vehiculo`, `Tipo`, `Departamento`, `Enero`, `Febrero`, `Marzo`, `Abril`, `Mayo`, `Junio`, `Julio`, `Agosto`, `Septiembre`, `Octubre`, `Noviembre`, `Diciembre`) VALUES
	(1, 'Kia Picanto', 'Automoviles', 'Antioquia', 1, 0, 2, 2, 0, 0, 4, 1, 2, 1, 0, 3),
	(2, 'Kia Picanto', 'Automoviles', 'Antioquia', 0, 0, 1, 3, 3, 0, 0, 0, 2, 2, 2, 2),
	(3, 'Mazda CX-30', 'Camioneta', 'Antioquia', 5, 2, 2, 1, 0, 0, 0, 2, 2, 3, 1, 0),
	(4, 'Kia Picanto', 'Automoviles', 'Valle del Cauca', 1, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
	(5, 'Mazda CX-30', 'Camioneta', 'Antioquia', 4, 2, 1, 1, 1, 1, 0, 0, 2, 2, 1, 7),
	(6, 'Toyota Fortuner', 'Camioneta', 'Valle del Cauca', 3, 2, 0, 0, 0, 1, 1, 4, 0, 0, 2, 2),
	(7, 'Renault Duster', 'Automoviles', 'Santander', 2, 0, 3, 3, 0, 0, 6, 2, 3, 2, 0, 5),
	(8, 'Toyota Hilux', 'Camioneta', 'Cundinamarca', 0, 0, 2, 5, 5, 0, 0, 0, 3, 3, 3, 3),
	(9, 'Chevrolet Onix', 'Automoviles', 'Atlantico', 8, 3, 3, 2, 0, 0, 0, 3, 3, 5, 2, 0),
	(10, 'Kia Picanto', 'Automoviles', 'Antioquia', 2, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0),
	(11, 'Mazda CX-30', 'Camioneta', 'Valle del Cauca', 6, 3, 2, 2, 2, 2, 0, 0, 3, 3, 2, 11),
	(12, 'Toyota Fortuner', 'Camioneta', 'Antioquia', 5, 3, 0, 0, 0, 2, 2, 6, 0, 0, 3, 3),
	(13, 'Renault Duster', 'Automoviles', 'Valle del Cauca', 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
	(14, 'Toyota Hilux', 'Camioneta', 'Santander', 2, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3),
	(15, 'Chevrolet Onix', 'Automoviles', 'Cundinamarca', 1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 1, 1),
	(16, 'Kia Picanto', 'Automoviles', 'Atlantico', 1, 0, 1, 1, 0, 0, 3, 1, 1, 1, 0, 2),
	(17, 'Mazda CX-30', 'Camioneta', 'Cundinamarca', 0, 0, 1, 2, 2, 0, 0, 0, 1, 1, 1, 1),
	(18, 'Kia Picanto', 'Automoviles', 'Atlantico', 4, 1, 1, 1, 0, 0, 0, 1, 1, 2, 1, 0),
	(19, 'Mazda CX-30', 'Camioneta', 'Antioquia', 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
	(20, 'Toyota Fortuner', 'Camioneta', 'Valle del Cauca', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
	(21, 'Renault Duster', 'Automoviles', 'Santander', 4, 2, 0, 0, 0, 0, 0, 0, 2, 2, 0, 6),
	(22, 'Toyota Hilux', 'Camioneta', 'Cundinamarca', 2, 2, 0, 0, 0, 0, 0, 4, 0, 0, 2, 2),
	(23, 'Chevrolet Onix', 'Automoviles', 'Atlantico', 2, 0, 2, 2, 0, 0, 6, 2, 2, 2, 0, 4),
	(24, 'Mazda 2', 'Automoviles', 'Antioquia', 0, 0, 2, 4, 4, 0, 0, 0, 2, 2, 2, 2),
	(25, 'Suzuki Swift', 'Automoviles', 'Antioquia', 8, 2, 2, 2, 0, 0, 0, 2, 2, 4, 2, 0),
	(26, 'Chevrolet Tracker', 'Camioneta', 'Valle del Cauca', 2, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
	(27, 'Foton BJ', 'Comerciales_Carga', 'Antioquia', 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0),
	(28, 'Ford Escape', 'Camioneta', 'Valle del Cauca', 8, 4, 0, 0, 0, 0, 0, 0, 4, 4, 0, 12),
	(29, 'Renault Kwid', 'Suv', 'Santander', 2, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3),
	(30, 'Toyota Prado', 'Camioneta', 'Cundinamarca', 1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 1, 1),
	(31, 'Chevrolet Joy', 'Automoviles', 'Atlantico', 1, 0, 1, 1, 0, 0, 3, 1, 1, 1, 0, 2),
	(32, 'Toyota Corolla', 'Automoviles', 'Cundinamarca', 0, 0, 1, 2, 2, 0, 0, 0, 1, 1, 1, 1),
	(33, 'Renault Stepway', 'Suv', 'Antioquia', 4, 1, 1, 1, 0, 0, 0, 1, 1, 2, 1, 0),
	(34, 'Kia Picanto', 'Automoviles', 'Valle del Cauca', 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
	(35, 'Mazda CX-30', 'Camioneta', 'Antioquia', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
	(36, 'Toyota Fortuner', 'Camioneta', 'Valle del Cauca', 4, 2, 0, 0, 0, 0, 0, 0, 2, 2, 0, 6),
	(37, 'Renault Duster', 'Automoviles', 'Santander', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
	(38, 'Toyota Hilux', 'Camioneta', 'Antioquia', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
	(39, 'Chevrolet Onix', 'Automoviles', 'Valle del Cauca', 2, 0, 2, 2, 0, 0, 6, 2, 2, 2, 0, 4),
	(40, 'Mazda 2', 'Automoviles', 'Antioquia', 0, 0, 2, 4, 4, 0, 0, 0, 2, 2, 2, 2),
	(41, 'Suzuki Swift', 'Automoviles', 'Antioquia', 8, 2, 2, 2, 0, 0, 0, 2, 2, 4, 2, 0),
	(42, 'Chevrolet Tracker', 'Camioneta', 'Valle del Cauca', 2, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
	(43, 'Foton BJ', 'Comerciales_Carga', 'Santander', 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0),
	(44, 'Ford Escape', 'Camioneta', 'Cundinamarca', 8, 4, 0, 0, 0, 0, 0, 0, 4, 4, 0, 12),
	(45, 'Renault Kwid', 'Suv', 'Atlantico', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
	(46, 'Toyota Prado', 'Camioneta', 'Atlantico', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0),
	(47, 'Chevrolet Joy', 'Automoviles', 'Antioquia', 4, 0, 4, 4, 0, 0, 12, 4, 4, 4, 0, 8),
	(48, 'Toyota Corolla', 'Automoviles', 'Valle del Cauca', 2, 0, 4, 4, 0, 0, 8, 2, 4, 2, 0, 6),
	(49, 'Renault Stepway', 'Suv', 'Antioquia', 0, 0, 2, 6, 6, 0, 0, 0, 4, 4, 4, 4),
	(50, 'Renault Logan', 'Automoviles', 'Valle del Cauca', 0, 4, 4, 2, 0, 0, 0, 4, 4, 6, 2, 0),
	(51, 'Hyundai Tucson', 'Camioneta', 'Santander', 1, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0),
	(52, 'Kia Picanto', 'Automoviles', 'Cundinamarca', 0, 4, 2, 2, 2, 2, 0, 0, 4, 4, 2, 14),
	(53, 'Mazda CX-30', 'Camioneta', 'Atlantico', 0, 4, 0, 0, 0, 2, 2, 8, 0, 0, 4, 4),
	(54, 'Toyota Fortuner', 'Camioneta', 'Antioquia', 0, 0, 6, 6, 0, 0, 12, 4, 6, 4, 0, 10),
	(55, 'Renault Duster', 'Automoviles', 'Valle del Cauca', 0, 0, 4, 10, 10, 0, 0, 0, 6, 6, 6, 6),
	(56, 'Toyota Hilux', 'Camioneta', 'Santander', 0, 6, 6, 4, 0, 0, 0, 6, 6, 10, 4, 0),
	(57, 'Chevrolet Onix', 'Automoviles', 'Cundinamarca', 0, 0, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0),
	(58, 'Mazda 2', 'Automoviles', 'Atlantico', 0, 6, 4, 4, 4, 4, 0, 0, 6, 6, 4, 22),
	(59, 'Suzuki Swift', 'Automoviles', 'Antioquia', 0, 6, 0, 0, 0, 4, 4, 12, 0, 0, 6, 6),
	(60, 'Chevrolet Tracker', 'Camioneta', 'Valle del Cauca', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
	(61, 'Foton BJ', 'Comerciales_Carga', 'Antioquia', 0, 2, 0, 0, 0, 0, 0, 0, 2, 2, 0, 6),
	(62, 'Ford Escape', 'Camioneta', 'Valle del Cauca', 0, 2, 0, 0, 0, 0, 0, 4, 0, 0, 2, 2),
	(63, 'Renault Kwid', 'Suv', 'Antioquia', 0, 0, 2, 2, 0, 0, 6, 2, 2, 2, 0, 4),
	(64, 'Toyota Prado', 'Camioneta', 'Valle del Cauca', 0, 0, 2, 4, 4, 0, 0, 0, 2, 2, 2, 2),
	(65, 'Chevrolet Joy', 'Automoviles', 'Santander', 0, 2, 2, 2, 0, 0, 0, 2, 2, 4, 2, 0),
	(66, 'Toyota Corolla', 'Automoviles', 'Cundinamarca', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
	(67, 'Renault Stepway', 'Suv', 'Antioquia', 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0),
	(68, 'Renault Logan', 'Automoviles', 'Valle del Cauca', 0, 4, 0, 0, 0, 0, 0, 0, 4, 4, 0, 12),
	(69, 'Hyundai Tucson', 'Camioneta', 'Santander', 4, 4, 0, 0, 0, 0, 0, 8, 0, 0, 4, 4),
	(70, 'Toyota Corolla Cross', 'Camioneta', 'Cundinamarca', 4, 0, 4, 4, 0, 0, 12, 4, 4, 4, 0, 8),
	(71, 'Renault Sandero', 'Automoviles', 'Atlantico', 0, 0, 4, 8, 8, 0, 0, 0, 4, 4, 4, 4),
	(72, 'Volkswagen Gol', 'Automoviles', 'Atlantico', 16, 4, 4, 4, 0, 0, 0, 4, 4, 8, 4, 0),
	(73, 'Kia Picanto', 'Automoviles', 'Antioquia', 4, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0),
	(74, 'Mazda CX-30', 'Camioneta', 'Valle del Cauca', 2, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0),
	(75, 'Toyota Fortuner', 'Camioneta', 'Antioquia', 0, 8, 0, 0, 0, 0, 0, 0, 8, 8, 0, 24),
	(76, 'Renault Duster', 'Automoviles', 'Valle del Cauca', 3, 2, 0, 0, 0, 0, 0, 0, 2, 2, 0, 6),
	(77, 'Toyota Hilux', 'Camioneta', 'Antioquia', 2, 2, 0, 0, 0, 0, 0, 4, 0, 0, 2, 2),
	(78, 'Chevrolet Onix', 'Automoviles', 'Valle del Cauca', 1, 0, 2, 2, 0, 0, 6, 2, 2, 2, 0, 4),
	(79, 'Mazda CX-5', 'Camioneta', 'Santander', 1, 0, 2, 4, 4, 0, 0, 0, 2, 2, 2, 2),
	(80, 'Suzuki Swift', 'Automoviles', 'Cundinamarca', 1, 2, 2, 2, 0, 0, 0, 2, 2, 4, 2, 0),
	(81, 'Chevrolet Tracker', 'Camioneta', 'Atlantico', 1, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
	(82, 'Foton BJ', 'Comerciales_Carga', 'Valle del Cauca', 1, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0),
	(83, 'Ford Escape', 'Camioneta', 'Santander', 3, 4, 0, 0, 0, 0, 0, 0, 4, 4, 0, 12),
	(84, 'Renault Kwid', 'Suv', 'Cundinamarca', 6, 4, 0, 0, 0, 0, 0, 0, 4, 4, 0, 12),
	(85, 'Toyota Prado', 'Camioneta', 'Atlantico', 4, 4, 0, 0, 0, 0, 0, 8, 0, 0, 4, 4),
	(86, 'Chevrolet Joy', 'Automoviles', 'Antioquia', 2, 0, 4, 4, 0, 0, 12, 4, 4, 4, 0, 8),
	(87, 'Toyota Corolla', 'Automoviles', 'Valle del Cauca', 2, 0, 4, 8, 8, 0, 0, 0, 4, 4, 4, 4),
	(88, 'Renault Stepway', 'Suv', 'Santander', 2, 4, 4, 4, 0, 0, 0, 4, 4, 8, 4, 0),
	(89, 'Renault Logan', 'Automoviles', 'Cundinamarca', 2, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0),
	(90, 'Hyundai Tucson', 'Camioneta', 'Antioquia', 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0),
	(91, 'Toyota Corolla Cross', 'Camioneta', 'Valle del Cauca', 0, 8, 0, 0, 0, 0, 0, 0, 8, 8, 0, 24),
	(92, 'Renault Sandero', 'Automoviles', 'Santander', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
	(93, 'Volkswagen Gol', 'Automoviles', 'Cundinamarca', 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0),
	(94, 'Volkswagen Voyage', 'Automoviles', 'Atlantico', 0, 0, 8, 8, 0, 0, 24, 8, 8, 8, 0, 16),
	(95, 'Kia Stonic', 'Suv', 'Atlantico', 0, 0, 8, 8, 0, 0, 16, 4, 8, 4, 0, 12),
	(96, 'Kia Rio', 'Automoviles', 'Atlantico', 0, 0, 4, 12, 12, 0, 0, 0, 8, 8, 8, 8);
