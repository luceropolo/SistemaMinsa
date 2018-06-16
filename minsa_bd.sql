/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.24-log : Database - minsa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`minsa` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

USE `minsa`;

/*Table structure for table `animales` */

DROP TABLE IF EXISTS `animales`;

CREATE TABLE `animales` (
  `id_familia` int(10) NOT NULL,
  `Mascotas` tinyint(1) NOT NULL,
  `Vacuna_mascota` tinyint(1) NOT NULL,
  `Animal_comercial` tinyint(1) NOT NULL,
  `Vacuna_animalcomercial` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `animales` */

/*Table structure for table `barranca` */

DROP TABLE IF EXISTS `barranca`;

CREATE TABLE `barranca` (
  `Id_Barranca` int(10) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Barranca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `barranca` */

insert  into `barranca`(`Id_Barranca`,`Nombre`) values (0,''),(1,'Barranca'),(2,'Paramonga'),(3,'Pativilca'),(4,'Supe'),(5,'Supe Puerto');

/*Table structure for table `basura` */

DROP TABLE IF EXISTS `basura`;

CREATE TABLE `basura` (
  `id_vivienda` int(10) NOT NULL,
  `carro_recolector` tinyint(1) NOT NULL,
  `campo_abierto` tinyint(1) NOT NULL,
  `rio` tinyint(1) NOT NULL,
  `enterrar` tinyint(1) NOT NULL,
  `pozo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_vivienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `basura` */

insert  into `basura`(`id_vivienda`,`carro_recolector`,`campo_abierto`,`rio`,`enterrar`,`pozo`) values (1,0,0,0,0,0),(2,0,0,0,0,0);

/*Table structure for table `cañete` */

DROP TABLE IF EXISTS `cañete`;

CREATE TABLE `cañete` (
  `Id_Cañete` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Cañete`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `cañete` */

insert  into `cañete`(`Id_Cañete`,`Nombre`) values (1,'Asia'),(2,'Calango'),(3,'Cerro Azul'),(4,'Chilca'),(5,'Coayllo'),(6,'Imperial'),(7,'Lunahuana'),(8,'Mala'),(9,'Nuevo Imperial'),(10,'Pacara'),(11,'Quilmana'),(12,'San Antonio'),(13,'San Luis'),(14,'San Vicente de Cañete'),(15,'Santa Cruz de Florez'),(16,'Zuñiga');

/*Table structure for table `cajatambo` */

DROP TABLE IF EXISTS `cajatambo`;

CREATE TABLE `cajatambo` (
  `Id_Cajatambo` int(10) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Cajatambo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `cajatambo` */

insert  into `cajatambo`(`Id_Cajatambo`,`Nombre`) values (1,'Manás'),(2,'Gorgor'),(3,'Huancapon'),(4,'Cajatambo'),(5,'Copa');

/*Table structure for table `canta` */

DROP TABLE IF EXISTS `canta`;

CREATE TABLE `canta` (
  `Id_Canta` int(10) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Canta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `canta` */

insert  into `canta`(`Id_Canta`,`Nombre`) values (1,'Canta'),(2,'Arahuay'),(3,'Huamantanga'),(4,'Huaros'),(5,'Lachaqui'),(6,'San Buenaventura'),(7,'Santa Rosa de Quives');

/*Table structure for table `ciclo_familiar` */

DROP TABLE IF EXISTS `ciclo_familiar`;

CREATE TABLE `ciclo_familiar` (
  `Id_familia` int(10) NOT NULL,
  `F_formacion` tinyint(1) NOT NULL,
  `Nacimiento_primer` tinyint(1) NOT NULL,
  `Hijo_preescolar` tinyint(1) NOT NULL,
  `Hijo_adolescentes` tinyint(1) NOT NULL,
  `Hijo_adulto` tinyint(1) NOT NULL,
  `F_dispersion` tinyint(1) NOT NULL,
  `F_contraccion` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `ciclo_familiar` */

/*Table structure for table `combustible_cocina` */

DROP TABLE IF EXISTS `combustible_cocina`;

CREATE TABLE `combustible_cocina` (
  `id_familia` int(10) NOT NULL,
  `Leña` tinyint(1) NOT NULL,
  `Carbón` tinyint(1) NOT NULL,
  `Bosta` tinyint(1) NOT NULL,
  `Gas_electricidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `combustible_cocina` */

/*Table structure for table `conservación_alimentos` */

DROP TABLE IF EXISTS `conservación_alimentos`;

CREATE TABLE `conservación_alimentos` (
  `id_familia` int(10) NOT NULL,
  `Temperatura` tinyint(1) NOT NULL,
  `Refrigeradora` tinyint(1) NOT NULL,
  `Recipiente_sin_tapa` tinyint(1) NOT NULL,
  `Recipiente_con_tapa` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `conservación_alimentos` */

/*Table structure for table `dato_hospital` */

DROP TABLE IF EXISTS `dato_hospital`;

CREATE TABLE `dato_hospital` (
  `id_hospital` int(10) NOT NULL,
  `IGSS/DIRESA/GERESA` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Red` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `MR_de_salud` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `E.E.S.S.` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_hospital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `dato_hospital` */

/*Table structure for table `discapacidad` */

DROP TABLE IF EXISTS `discapacidad`;

CREATE TABLE `discapacidad` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `limitación_usar_brazos_piernas` tinyint(1) NOT NULL,
  `limitación_entender_aprender` tinyint(1) NOT NULL,
  `limitación_ver_asú_uselentes` tinyint(1) NOT NULL,
  `limitación_oír` tinyint(1) NOT NULL,
  `limitación_hablar` tinyint(1) NOT NULL,
  `limitación_relacionarse` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `discapacidad` */

/*Table structure for table `distrito` */

DROP TABLE IF EXISTS `distrito`;

CREATE TABLE `distrito` (
  `Id_distrito` int(10) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_distrito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `distrito` */

insert  into `distrito`(`Id_distrito`,`Nombre`) values (1,'Ancón'),(2,'Ate'),(3,'Barranco'),(4,'Bellavista'),(5,'Breña'),(6,'Callao'),(7,'Carabayllo'),(8,'Carmen de La Legua-Reynoso'),(9,'Chaclacayo'),(10,'Chorrillos'),(11,'Cieneguilla'),(12,'Comas'),(13,'El Agustino'),(14,'Independencia'),(15,'Jesus María'),(16,'La Molina'),(17,'La Perla'),(18,'La Punta'),(19,'La Victoria'),(20,'Lima'),(21,'Lince'),(22,'Los Olivos'),(23,'Lurigancho-Chosica'),(24,'Lurín'),(25,'Magdalena del Mar'),(26,'Miraflores'),(27,'Pachacámac'),(28,'Pucusana'),(29,'Pueblo Libre'),(30,'Puente Piedra'),(31,'Punta Hermosa'),(32,'Punta Negra'),(33,'Rímac'),(34,'San Bartolo'),(35,'San Borja '),(36,'San Isidro'),(37,'San Juan de Lurigancho'),(38,'San Juan de Miraflores'),(39,'San Luis'),(40,'San Martín de Porres'),(41,'San Miguel'),(42,'Santa Anita'),(43,'Santa María del Mar'),(44,'Santa Rosa'),(45,'Santiago de Surco'),(46,'Surquillo'),(47,'Ventanilla'),(48,'Villa El Salvador'),(49,'Villa María del Triunfo');

/*Table structure for table `etapa_adolescente` */

DROP TABLE IF EXISTS `etapa_adolescente`;

CREATE TABLE `etapa_adolescente` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `sin_evaluación_nutricional` tinyint(1) NOT NULL,
  `sin_riesgo_cardiovascular` tinyint(1) NOT NULL,
  `sin_desarrollo_psicosocial` tinyint(1) NOT NULL,
  `sinagudeza_visualyauditiva` tinyint(1) NOT NULL,
  `sin_eval_desarrollosexual` tinyint(1) NOT NULL,
  `sin_eval_cavidadbucal` tinyint(1) NOT NULL,
  `sin_eval_físicapostural` tinyint(1) NOT NULL,
  `adolesc_cvacunasincompletas` tinyint(1) NOT NULL,
  `partic/pandillasydelinc` tinyint(1) NOT NULL,
  `problemasconducta_aliment` tinyint(1) NOT NULL,
  `Deserción_escolar` tinyint(1) NOT NULL,
  `conducta_sexual_riesgo` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `etapa_adolescente` */

/*Table structure for table `etapa_adulto` */

DROP TABLE IF EXISTS `etapa_adulto`;

CREATE TABLE `etapa_adulto` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `sin_evaluación_nutricional` tinyint(1) NOT NULL,
  `vacunas_incompletas` tinyint(1) NOT NULL,
  `riesgo_enfermedades_notransmisibles` tinyint(1) NOT NULL,
  `riesgo_enfermedades_trnasmisibles` tinyint(1) NOT NULL,
  `riesgo_enfermedades_ocupacionales` tinyint(1) NOT NULL,
  `sin_eval_cavidad_bucal` tinyint(1) NOT NULL,
  `mujer_sexualmactiva_sinpapanicolaou_anual` tinyint(1) NOT NULL,
  `conducta_sexual_riesgo` tinyint(1) NOT NULL,
  `sin_examen_colesterol` tinyint(1) NOT NULL,
  `sin_planificación_familiar` tinyint(1) NOT NULL,
  `mamografía_bianual` tinyint(1) NOT NULL,
  `sin_evaluación_próstata` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `etapa_adulto` */

/*Table structure for table `etapa_adulto_mayor` */

DROP TABLE IF EXISTS `etapa_adulto_mayor`;

CREATE TABLE `etapa_adulto_mayor` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `sin_eval_nutricional` tinyint(1) NOT NULL,
  `sin_eval_mental` tinyint(1) NOT NULL,
  `sin_factores_riesgo_enfermedades_notransmisibles` tinyint(1) NOT NULL,
  `sin_factores_riesgo_enfermedades_transmisibles` tinyint(1) NOT NULL,
  `mujer_sin_papanicolaou_anual` tinyint(1) NOT NULL,
  `sin_eval_funcional` tinyint(1) NOT NULL,
  `sin_eval_cavidad_bucal` tinyint(1) NOT NULL,
  `déficit_visual_auditivo` tinyint(1) NOT NULL,
  `vacunas_incompletas` tinyint(1) NOT NULL,
  `sin_mamografía_bianual` tinyint(1) NOT NULL,
  `sin_examen_colesterol` tinyint(1) NOT NULL,
  `sin_pruebasangre_oculta_enheces` tinyint(1) NOT NULL,
  `sin_eval_próstata` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `etapa_adulto_mayor` */

/*Table structure for table `etapa_joven` */

DROP TABLE IF EXISTS `etapa_joven`;

CREATE TABLE `etapa_joven` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `sin_eval_nutricional` tinyint(1) NOT NULL,
  `vacunas_incom` tinyint(1) NOT NULL,
  `sin_eval_desarrollo_psicosocial` tinyint(1) NOT NULL,
  `enfermedades_no_transmisibles` tinyint(1) NOT NULL,
  `enfermedades_transmisibles` tinyint(1) NOT NULL,
  `sin_eval_cavidad_bucal` tinyint(1) NOT NULL,
  `sin_ident_problemas_renales` tinyint(1) NOT NULL,
  `sin_eval_riesgo_cardiovascular` tinyint(1) NOT NULL,
  `sin_papanicolao_anual` tinyint(1) NOT NULL,
  `sin_planificación_familiar` tinyint(1) NOT NULL,
  `participación_pandillas_delincuencia` tinyint(1) NOT NULL,
  `conducta_sexual_riesgo` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `etapa_joven` */

/*Table structure for table `etapa_niño` */

DROP TABLE IF EXISTS `etapa_niño`;

CREATE TABLE `etapa_niño` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Prematuro` tinyint(1) NOT NULL,
  `Nacido` tinyint(1) NOT NULL,
  `P.visual` tinyint(1) NOT NULL,
  `Sin_dni` tinyint(1) NOT NULL,
  `Niño_con_vacunasincompletas` tinyint(1) NOT NULL,
  `Menor_6_meses` tinyint(1) NOT NULL,
  `Sinevaluación_cavidadbucal` tinyint(1) NOT NULL,
  `Sin_estimulación_Temprana` tinyint(1) NOT NULL,
  `Sin_exámenes` tinyint(1) NOT NULL,
  `Sin_suplmenento` tinyint(1) NOT NULL,
  `Sin_control` tinyint(1) NOT NULL,
  `Deserción_Escolar` tinyint(1) NOT NULL,
  `Parto_domiciliario` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `etapa_niño` */

/*Table structure for table `excretas` */

DROP TABLE IF EXISTS `excretas`;

CREATE TABLE `excretas` (
  `id_vivienda` int(10) NOT NULL,
  `Airelibre` tinyint(1) NOT NULL,
  `Acequia` tinyint(1) NOT NULL,
  `Redpública` tinyint(1) NOT NULL,
  `Letrina` tinyint(1) NOT NULL,
  `Pozo` tinyint(1) NOT NULL,
  `Otros` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_vivienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `excretas` */

/*Table structure for table `familia` */

DROP TABLE IF EXISTS `familia`;

CREATE TABLE `familia` (
  `Id_familia` int(10) NOT NULL,
  `p1_cuenta_con_almacen` tinyint(1) NOT NULL,
  `p2_cocina_con_ventilacion` tinyint(1) NOT NULL,
  `p3_mochila_de emergencia` tinyint(1) NOT NULL,
  `p4_botiquin_de_emergencia` tinyint(1) NOT NULL,
  `ingreso_mensual` int(10) NOT NULL,
  `telefono` int(10) NOT NULL,
  `tiempo_de_demora` time NOT NULL,
  `medio_de_transporte` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tiempo_de_residencia` int(10) NOT NULL,
  `residencia_anterior` int(10) NOT NULL,
  `correo_electronico` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `id_vivienda` int(10) NOT NULL,
  `id_hospital` int(10) NOT NULL,
  PRIMARY KEY (`Id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `familia` */

/*Table structure for table `gestante` */

DROP TABLE IF EXISTS `gestante`;

CREATE TABLE `gestante` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `sin_plan_parto` tinyint(1) NOT NULL,
  `vacunas_incompletas` tinyint(1) NOT NULL,
  `sin_psicoprofilaxis` tinyint(1) NOT NULL,
  `sin_vigilancia_nutricional` tinyint(1) NOT NULL,
  `incompletoCPN` tinyint(1) NOT NULL,
  `sin_eval_cavidad_bucal` tinyint(1) NOT NULL,
  `sin_adm_desuplemento` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `gestante` */

/*Table structure for table `hospitales` */

DROP TABLE IF EXISTS `hospitales`;

CREATE TABLE `hospitales` (
  `id_hospital` int(10) NOT NULL,
  `Nombre_hospital` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_hospital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `hospitales` */

/*Table structure for table `huaral` */

DROP TABLE IF EXISTS `huaral`;

CREATE TABLE `huaral` (
  `Id_Huaral` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Huaral`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `huaral` */

insert  into `huaral`(`Id_Huaral`,`Nombre`) values (1,'27 d Noviembre'),(2,'Atavios Alto'),(3,'Atavios Bajo'),(4,'Aucallama'),(5,'Chancay'),(6,'Huaral'),(7,'Ihuarí'),(8,'Lampían'),(9,'Pacaraos'),(10,'Santa Cruz de Andamarca'),(11,'Sumbilca'),(12,'San Miguel de Acos');

/*Table structure for table `huarochiri` */

DROP TABLE IF EXISTS `huarochiri`;

CREATE TABLE `huarochiri` (
  `Id_Huarochiri` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Huarochiri`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `huarochiri` */

insert  into `huarochiri`(`Id_Huarochiri`,`Nombre`) values (1,'Matucana'),(2,'Antioquia'),(3,'Callahuanca'),(4,'Carampoma'),(5,'Chicla'),(6,'Cuenca'),(7,'Huachupampa'),(8,'Huanza'),(9,'Huarochiri'),(10,'Lahuaytambo'),(11,'Langa'),(12,'Laraos'),(13,'Mariatana'),(14,'Ricardo Palma'),(15,'San Andrés de Tupicocha'),(16,'San Antonio de Chacila'),(17,'San Bartolomé'),(18,'San Damián'),(19,'San Juan de Iris'),(20,'San Juan de Tantaranche'),(21,'San Lorenzo de Quinti'),(22,'San Mateo'),(23,'San Mateo de Otao'),(24,'San Pedro de Casta'),(25,'San Pedro de Huancayre'),(26,'Sangallaya'),(27,'Santa Cruz de Cocachacra'),(28,'Santa Eulalia'),(29,'Santiago de Tuna'),(30,'Santo Domingo de Los Olieros'),(31,'San Jerónimo de Surco'),(32,'Santiago de Anchucaya');

/*Table structure for table `integrantes` */

DROP TABLE IF EXISTS `integrantes`;

CREATE TABLE `integrantes` (
  `Id_Familia` int(10) NOT NULL,
  `numero_niños_niñas` int(5) NOT NULL,
  `numero_adolescentes` int(5) NOT NULL,
  `numero_jovenes` int(5) NOT NULL,
  `numero_adultos` int(5) NOT NULL,
  `numero_adulto_mayor` int(5) NOT NULL,
  PRIMARY KEY (`Id_Familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `integrantes` */

/*Table structure for table `localidad` */

DROP TABLE IF EXISTS `localidad`;

CREATE TABLE `localidad` (
  `Id_Localidad` int(10) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `localidad` */

/*Table structure for table `miembros` */

DROP TABLE IF EXISTS `miembros`;

CREATE TABLE `miembros` (
  `Id_familia` int(10) NOT NULL,
  `Nombres` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Apellidos` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Edad` int(10) NOT NULL,
  `Sexo` tinyint(1) NOT NULL,
  `DNI_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  `Parentesco` tinyint(3) NOT NULL,
  `Estado_civil` tinyint(1) NOT NULL,
  `Grado` tinyint(2) NOT NULL,
  `Ocupacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Condicion_ocupacion` tinyint(2) NOT NULL,
  PRIMARY KEY (`DNI_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `miembros` */

/*Table structure for table `numeros_miembros_x_hab` */

DROP TABLE IF EXISTS `numeros_miembros_x_hab`;

CREATE TABLE `numeros_miembros_x_hab` (
  `Id_familia` int(10) NOT NULL,
  `uno_a_tres` tinyint(1) NOT NULL,
  `cuatro_a_mas` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `numeros_miembros_x_hab` */

/*Table structure for table `origen_limitación` */

DROP TABLE IF EXISTS `origen_limitación`;

CREATE TABLE `origen_limitación` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `enfermedad_laboral` tinyint(1) NOT NULL,
  `genético` tinyint(1) NOT NULL,
  `enfermedad_crónica` tinyint(1) NOT NULL,
  `accidente_laboral` tinyint(1) NOT NULL,
  `accidente_tránsito` tinyint(1) NOT NULL,
  `violencia_familiar` tinyint(1) NOT NULL,
  `accidente_común` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `origen_limitación` */

/*Table structure for table `otros_riesgos` */

DROP TABLE IF EXISTS `otros_riesgos`;

CREATE TABLE `otros_riesgos` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `riesgo_exposición_solar` tinyint(1) NOT NULL,
  `riesgo_trabajo` tinyint(1) NOT NULL,
  `riesgo_consumo_tabaco` tinyint(1) NOT NULL,
  `tos_flema` tinyint(1) NOT NULL,
  `riesgo_sedentarismo` tinyint(1) NOT NULL,
  `alergia_a_medicamentos` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `otros_riesgos` */

/*Table structure for table `pared_material` */

DROP TABLE IF EXISTS `pared_material`;

CREATE TABLE `pared_material` (
  `id_vivienda` int(10) NOT NULL,
  `madera` tinyint(1) NOT NULL,
  `adobe` tinyint(1) NOT NULL,
  `cemento` tinyint(1) NOT NULL,
  `quincha` tinyint(1) NOT NULL,
  `otros` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_vivienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `pared_material` */

/*Table structure for table `piso_material` */

DROP TABLE IF EXISTS `piso_material`;

CREATE TABLE `piso_material` (
  `ID_vivienda` int(10) NOT NULL,
  `Madera` tinyint(1) NOT NULL,
  `Parquet` tinyint(1) NOT NULL,
  `Losetas` tinyint(1) NOT NULL,
  `Cemento` tinyint(1) NOT NULL,
  `Tierra` tinyint(1) NOT NULL,
  `Otros` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_vivienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `piso_material` */

/*Table structure for table `provincia` */

DROP TABLE IF EXISTS `provincia`;

CREATE TABLE `provincia` (
  `Id_Provincia` int(10) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_Provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `provincia` */

insert  into `provincia`(`Id_Provincia`,`Nombre`) values (1,'Barranca'),(2,'Cajatambo'),(3,'Canta'),(4,'Cañete'),(5,'Huaral'),(6,'Huarochiri'),(7,'Huaura'),(8,'Lima'),(9,'Oyón'),(10,'Yauyos');

/*Table structure for table `puerpera` */

DROP TABLE IF EXISTS `puerpera`;

CREATE TABLE `puerpera` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `sangrado_vaginal_abundante` tinyint(1) NOT NULL,
  `sangrado_vaginal_olor` tinyint(1) NOT NULL,
  `fiebre,escalofrios` tinyint(1) NOT NULL,
  `molestias_para_orinar` tinyint(1) NOT NULL,
  `dolor_carlos_mamas` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `puerpera` */

/*Table structure for table `riesgo_entorno` */

DROP TABLE IF EXISTS `riesgo_entorno`;

CREATE TABLE `riesgo_entorno` (
  `id_vivienda` int(10) NOT NULL,
  `Lluvias` tinyint(1) NOT NULL,
  `Inundaciones` tinyint(1) NOT NULL,
  `Basural` tinyint(1) NOT NULL,
  `Inservibles` tinyint(1) NOT NULL,
  `Contaminantes` tinyint(1) NOT NULL,
  `Huaycos` tinyint(1) NOT NULL,
  `Delincuencia` tinyint(1) NOT NULL,
  `Alcoholismo` tinyint(1) NOT NULL,
  `Sin_luz` tinyint(1) NOT NULL,
  `No_asfalto` tinyint(1) NOT NULL,
  `Vectores` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_vivienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `riesgo_entorno` */

/*Table structure for table `riesgo_familia` */

DROP TABLE IF EXISTS `riesgo_familia`;

CREATE TABLE `riesgo_familia` (
  `dni_carnet` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `P1_cómo_educar_a_niños` tinyint(1) NOT NULL,
  `P2_su_hijo_pide_ayuda` tinyint(1) NOT NULL,
  `P3_poco_dinero_para_lacomida` tinyint(1) NOT NULL,
  `P4_consejería_suplementos` tinyint(1) NOT NULL,
  `P5_hijo(a)_metas_alograr` tinyint(1) NOT NULL,
  `P6_intereses_respetados` tinyint(1) NOT NULL,
  `P7_transmisión_experiencias` tinyint(1) NOT NULL,
  `P8_difícil_demostración_cariño` tinyint(1) NOT NULL,
  `P9_promueve_unión_familiar` tinyint(1) NOT NULL,
  `P10_búsqueda_ayuda_instituciones` tinyint(1) NOT NULL,
  `P11_costumbres_normas_amodificarse` tinyint(1) NOT NULL,
  `P12_losvalores_ayuden_encasa` tinyint(1) NOT NULL,
  `P13_sentir_menos_a_un_miembrofamiliar` tinyint(1) NOT NULL,
  `P14_disciplina_cumplimiento_tareas` tinyint(1) NOT NULL,
  `P15_privacidad` tinyint(1) NOT NULL,
  `P16_resolución_conflictos` tinyint(1) NOT NULL,
  `P17_miembrofamiliar_victima_violencia` tinyint(1) NOT NULL,
  `P18_intento_suicidio` tinyint(1) NOT NULL,
  `P19_diálogos_libres_de_sexualidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `riesgo_familia` */

/*Table structure for table `seguros` */

DROP TABLE IF EXISTS `seguros`;

CREATE TABLE `seguros` (
  `DNI_carnet` int(10) NOT NULL,
  `SIS` tinyint(1) NOT NULL,
  `ESSALUD` tinyint(1) NOT NULL,
  `Privado` tinyint(1) NOT NULL,
  `Sin_seguro` tinyint(1) NOT NULL,
  PRIMARY KEY (`DNI_carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `seguros` */

/*Table structure for table `servicios` */

DROP TABLE IF EXISTS `servicios`;

CREATE TABLE `servicios` (
  `id_familia` int(10) NOT NULL,
  `Teléfono` tinyint(1) NOT NULL,
  `Internet` tinyint(1) NOT NULL,
  `Cable` tinyint(1) NOT NULL,
  `Electricidad` tinyint(1) NOT NULL,
  `Agua_desague` tinyint(1) NOT NULL,
  `Otros` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `servicios` */

/*Table structure for table `techo_material` */

DROP TABLE IF EXISTS `techo_material`;

CREATE TABLE `techo_material` (
  `id_vivienda` int(10) NOT NULL,
  `Calamina` tinyint(1) NOT NULL,
  `Madera` tinyint(1) NOT NULL,
  `Noble` tinyint(1) NOT NULL,
  `Eternit` tinyint(1) NOT NULL,
  `Paja` tinyint(1) NOT NULL,
  `Caña` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_vivienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `techo_material` */

/*Table structure for table `tipo_familia` */

DROP TABLE IF EXISTS `tipo_familia`;

CREATE TABLE `tipo_familia` (
  `id_familia` int(10) NOT NULL,
  `Nuclear` tinyint(1) NOT NULL,
  `Extendida` tinyint(1) NOT NULL,
  `Monoparental` tinyint(1) NOT NULL,
  `Reconstruida` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `tipo_familia` */

/*Table structure for table `transporte_propio` */

DROP TABLE IF EXISTS `transporte_propio`;

CREATE TABLE `transporte_propio` (
  `ID_Familia` int(10) NOT NULL,
  `Automovil` tinyint(1) NOT NULL,
  `Bicicleta` tinyint(1) NOT NULL,
  `Motocicleta` tinyint(1) NOT NULL,
  `Otros` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_Familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `transporte_propio` */

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `usuarios` */

insert  into `usuarios`(`ID`,`nombre`,`user`,`password`) values (1,'lucero','LUCERO','POLO'),(2,'cristian','CRISTIAN','QUEZADA'),(3,'juan','JUAN','RAMOS'),(4,'Pilar','PILAR','CARRASCO'),(5,'Leyla','LEYLA','MARTEL');

/*Table structure for table `visita` */

DROP TABLE IF EXISTS `visita`;

CREATE TABLE `visita` (
  `Id_familia` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `responsable` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `resultados` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_prox_visita` date NOT NULL,
  PRIMARY KEY (`Id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `visita` */

/*Table structure for table `vivienda` */

DROP TABLE IF EXISTS `vivienda`;

CREATE TABLE `vivienda` (
  `ID_vivienda` int(10) NOT NULL,
  `Agua_consumo` tinyint(1) NOT NULL,
  `Abastecimiento` tinyint(1) NOT NULL,
  `ID_Provincia` int(10) NOT NULL,
  `ID_Localidad` int(10) NOT NULL,
  `ID_Distrito` int(10) NOT NULL,
  `Sector` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Area_de_residencia` int(50) NOT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ID_vivienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `vivienda` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
