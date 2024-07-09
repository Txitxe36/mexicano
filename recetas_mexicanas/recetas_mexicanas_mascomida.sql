-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: recetas_mexicanas
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mascomida`
--

DROP TABLE IF EXISTS `mascomida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascomida` (
  `ID_MASCOMIDA` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INGREDIENTES` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KCAL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MODOPREPARACION` longtext COLLATE utf8mb4_unicode_ci,
  `NOMBRE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PORCIONES` int DEFAULT NULL,
  `RUTA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIEMPO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_MASCOMIDA`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascomida`
--

LOCK TABLES `mascomida` WRITE;
/*!40000 ALTER TABLE `mascomida` DISABLE KEYS */;
INSERT INTO `mascomida` VALUES (1,'Una delicia tropical, asÃ­ es como describo a la Margarita de Mango congelado. El deliciosos sabor del mango mezclado con tequila y licor de naranja, y otros pocos ingredientes son los que necesitas para crear tu propio coctel en casa. Checa la receta y ve lo fÃ¡cil que es prepararlo!','225 gramos de mango congelado en trozos 1Â¾ taza\r\n85 ml de Tequila Blanco 6 cucharadas\r\n45 ml de triple sec 3 cucharadas\r\n85 ml jarabe de agave Â¼ de taza*\r\n30 ml de jugo de limÃ³n 3 cucharadas\r\n2 tazas de cubos de hielo\r\nÂ½ cucharadita Chile piquÃ­n molido o Polvo TajÃ­n para mezclar con la sal opcional','35 kcal','Coloca los trozos de mango, el tequila cazadores, el triple sec, el jarabe natural y el jugo de limÃ³n en la licuadora. Mezcla en la velocidad mÃ¡s alta hasta para que tengas una mezcla muy cremosa.\r\n\r\nAgrega los cubos de hielo a la licuadora, asegurÃ¡ndote de que lleguen hasta el fondo donde estÃ¡n las cuchillas, y continÃºa licuando hasta que todo este licuado muy fino. Sirva en los vasos preparados de tu elecciÃ³n.\r\nPara preparar los vasos, frota los bordes con una rodaja de limÃ³n y luego sumÃ©rgelos en un plato pequeÃ±o de sal (si usas con el PiquÃ­n o el polvo tajÃ­n). Â¡Y listo! Disfruta de tu margarita de mango congelado!','Margarita de mango congelado',2,'https://th.bing.com/th/id/R.6079b5376484b6112bde80cc9fcd7ef2?rik=0AzxVGDMy5Bz8Q&pid=ImgRaw&r=0','10 min','Bebidas'),(2,'La receta de enchiladas rojas con pollo es de las mÃ¡s comunes en MÃ©xico, aunque hay cientos de maneras diferentes de preparar este plato. Una de las ventajas de las enchiladas es que no necesitan acompaÃ±amientos. Se pueden servir con arroz o frijoles como guarniciÃ³n, pero si no, no pasa nada.','12 tortillas de maÃ­z.\\n\r\n1 pechuga de pollo limpia y sin grasa\r\n1 cebolla pequeÃ±a\r\n1 diente de ajo\r\n4 tomates rojos o jitomates\r\n2 chiles rojos\r\n1 hoja de laurel\r\n1 lechuga de tipo romana verde mÃ¡s claro y crujientes al centro.\r\n1/2 taza de Crema Ã¡cida o agria nata.\r\nQueso fresco blanco para adornar de tipo feta, cotija o similar.\r\nAceite de sabor neutro.','230 Kcal','En una cacerola con agua caliente, cocinar la pechuga de pollo con sal y la hoja de laurel, hasta que la carne pegada al hueso haya perdido el tono rojizo-rosado.\r\nSacar la pechuga del agua y deshebrar la carne con ayuda de dos tenedores.\r\nLavar los chiles y tomates. Abrir los primeros y quitar las semillas, el tallo y la vena blanca.\r\nPelar la cebolleta y los ajos.\r\nPoner a asar el ajo, la cebolla, los chiles y los tomates.\r\nUna vez asados, meter todos los vegetales a licuar, con un par de buenas cucharadas de crema. AÃ±adir un poco de sal. Si hace falta un poco de lÃ­quido para que la licuadora funcione bien, se pueden aÃ±adir algunas cucharadas del caldo en el que se cociÃ³ el pollo.\r\nDespuÃ©s de licuar, probar y corregir la sazÃ³n, si es necesario.\r\nPasar la salsa por un colador para quitar las semillas y que quede bien lÃ­quida.\r\nVerter la salsa en una cacerola y cocinar a fuego bajo.\r\nMientras tanto, limpiar la lechuga y cortar tiras por el equivalente a dos o tres tazas.\r\nDisponer un par de cucharadas de aceite en un sartÃ©n, y dorar las tortillas previamente mojadas en la salsa (una a una, sÃ³lo un poco hasta que se suavicen).\r\nRellenar cada tortilla con un poco de pollo y doblar.\r\nDisponer al menos 3 tortillas por plato.  Se pueden cubrir con mÃ¡s salsa, al gusto.\r\nCubrir con las tiras de lechuga, lo que reste de la crema de leche, y finalmente espolvorear con queso fresco.\r\nComer inmediatamente.','Enchiladas',4,'https://www.comedera.com/wp-content/uploads/2017/08/mexican-245240_1280-1024x721.jpg','40 min','Pollo'),(3,'La mejor hamburguesa de pollo a la mexicana ','pollo\r\npan\r\ncebolla\r\nchedar\r\n','123 kcal','ni idea','Hamburguesa',1,'https://www.callejerostacos.com/wp-content/uploads/2020/09/Pambazos-1-scaled.jpg','10 min','Carne');
/*!40000 ALTER TABLE `mascomida` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-08 22:39:11
