--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-01-19 16:34:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16463)
-- Name: candidato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidato (
    id integer,
    nombre character varying(255)
);


ALTER TABLE public.candidato OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16473)
-- Name: comuna; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comuna (
    id integer NOT NULL,
    nombre character varying(255),
    region integer
);


ALTER TABLE public.comuna OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16472)
-- Name: comuna_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comuna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comuna_id_seq OWNER TO postgres;

--
-- TOC entry 4804 (class 0 OID 0)
-- Dependencies: 217
-- Name: comuna_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comuna_id_seq OWNED BY public.comuna.id;


--
-- TOC entry 216 (class 1259 OID 16466)
-- Name: region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.region (
    id integer,
    nombre character varying(255)
);


ALTER TABLE public.region OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16486)
-- Name: voto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voto (
    nombre character varying(255),
    alias character varying(255),
    rut integer NOT NULL,
    email character varying(255),
    region integer,
    comuna integer,
    candidato integer,
    web integer,
    tv integer,
    rrss integer,
    amigo integer
);


ALTER TABLE public.voto OWNER TO postgres;

--
-- TOC entry 4646 (class 2604 OID 16476)
-- Name: comuna id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comuna ALTER COLUMN id SET DEFAULT nextval('public.comuna_id_seq'::regclass);


--
-- TOC entry 4794 (class 0 OID 16463)
-- Dependencies: 215
-- Data for Name: candidato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.candidato VALUES (1, 'Candidato Uno');
INSERT INTO public.candidato VALUES (2, 'Candidato Dos');
INSERT INTO public.candidato VALUES (3, 'Candidato Tres');


--
-- TOC entry 4797 (class 0 OID 16473)
-- Dependencies: 218
-- Data for Name: comuna; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comuna VALUES (1, 'Arica', 1);
INSERT INTO public.comuna VALUES (2, 'Camarones', 1);
INSERT INTO public.comuna VALUES (3, 'General Lagos', 1);
INSERT INTO public.comuna VALUES (4, 'Putre', 1);
INSERT INTO public.comuna VALUES (5, 'Alto Hospicio', 2);
INSERT INTO public.comuna VALUES (6, 'Camiña', 2);
INSERT INTO public.comuna VALUES (7, 'Colchane', 2);
INSERT INTO public.comuna VALUES (8, 'Huara', 2);
INSERT INTO public.comuna VALUES (9, 'Iquique', 2);
INSERT INTO public.comuna VALUES (10, 'Pica', 2);
INSERT INTO public.comuna VALUES (11, 'Pozo Almonte', 2);
INSERT INTO public.comuna VALUES (12, 'Antofagasta', 3);
INSERT INTO public.comuna VALUES (13, 'Calama', 3);
INSERT INTO public.comuna VALUES (14, 'María Elena', 3);
INSERT INTO public.comuna VALUES (15, 'Mejillones', 3);
INSERT INTO public.comuna VALUES (16, 'Ollagüe', 3);
INSERT INTO public.comuna VALUES (17, 'San Pedro de Atacama', 3);
INSERT INTO public.comuna VALUES (18, 'Sierra Gorda', 3);
INSERT INTO public.comuna VALUES (19, 'Taltal', 3);
INSERT INTO public.comuna VALUES (20, 'Tocopilla', 3);
INSERT INTO public.comuna VALUES (21, 'Alto del Carmen', 4);
INSERT INTO public.comuna VALUES (22, 'Caldera', 4);
INSERT INTO public.comuna VALUES (23, 'Chañaral', 4);
INSERT INTO public.comuna VALUES (24, 'Copiapó', 4);
INSERT INTO public.comuna VALUES (25, 'Diego de Almagro', 4);
INSERT INTO public.comuna VALUES (26, 'Freirina', 4);
INSERT INTO public.comuna VALUES (27, 'Huasco', 4);
INSERT INTO public.comuna VALUES (28, 'Tierra Amarilla', 4);
INSERT INTO public.comuna VALUES (29, 'Vallenar', 4);
INSERT INTO public.comuna VALUES (30, 'Andacollo', 5);
INSERT INTO public.comuna VALUES (31, 'Canela', 5);
INSERT INTO public.comuna VALUES (32, 'Combarbalá', 5);
INSERT INTO public.comuna VALUES (33, 'Coquimbo', 5);
INSERT INTO public.comuna VALUES (34, 'Illapel', 5);
INSERT INTO public.comuna VALUES (35, 'La Higuera', 5);
INSERT INTO public.comuna VALUES (36, 'La Serena', 5);
INSERT INTO public.comuna VALUES (37, 'Los Vilos', 5);
INSERT INTO public.comuna VALUES (38, 'Monte Patria', 5);
INSERT INTO public.comuna VALUES (39, 'Ovalle', 5);
INSERT INTO public.comuna VALUES (40, 'Paihuano', 5);
INSERT INTO public.comuna VALUES (41, 'Punitaqui', 5);
INSERT INTO public.comuna VALUES (42, 'Río Hurtado', 5);
INSERT INTO public.comuna VALUES (43, 'Salamanca', 5);
INSERT INTO public.comuna VALUES (44, 'Vicuña', 5);
INSERT INTO public.comuna VALUES (45, 'Algarrobo', 6);
INSERT INTO public.comuna VALUES (46, 'Cabildo', 6);
INSERT INTO public.comuna VALUES (47, 'Calle Larga', 6);
INSERT INTO public.comuna VALUES (48, 'Cartagena', 6);
INSERT INTO public.comuna VALUES (49, 'Casablanca', 6);
INSERT INTO public.comuna VALUES (50, 'Catemu', 6);
INSERT INTO public.comuna VALUES (51, 'Concón', 6);
INSERT INTO public.comuna VALUES (52, 'El Quisco', 6);
INSERT INTO public.comuna VALUES (53, 'El Tabo', 6);
INSERT INTO public.comuna VALUES (54, 'Hijuelas', 6);
INSERT INTO public.comuna VALUES (55, 'Isla de Pascua', 6);
INSERT INTO public.comuna VALUES (56, 'Juan Fernández', 6);
INSERT INTO public.comuna VALUES (57, 'La Calera', 6);
INSERT INTO public.comuna VALUES (58, 'La Cruz', 6);
INSERT INTO public.comuna VALUES (59, 'La Ligua', 6);
INSERT INTO public.comuna VALUES (60, 'Limache', 6);
INSERT INTO public.comuna VALUES (61, 'Llaillay', 6);
INSERT INTO public.comuna VALUES (62, 'Los Andes', 6);
INSERT INTO public.comuna VALUES (63, 'Nogales', 6);
INSERT INTO public.comuna VALUES (64, 'Olmué', 6);
INSERT INTO public.comuna VALUES (65, 'Panquehue', 6);
INSERT INTO public.comuna VALUES (66, 'Papudo', 6);
INSERT INTO public.comuna VALUES (67, 'Petorca', 6);
INSERT INTO public.comuna VALUES (68, 'Puchuncaví', 6);
INSERT INTO public.comuna VALUES (69, 'Putaendo', 6);
INSERT INTO public.comuna VALUES (70, 'Quillota', 6);
INSERT INTO public.comuna VALUES (71, 'Quilpué', 6);
INSERT INTO public.comuna VALUES (72, 'Quintero', 6);
INSERT INTO public.comuna VALUES (73, 'Rinconada', 6);
INSERT INTO public.comuna VALUES (74, 'San Antonio', 6);
INSERT INTO public.comuna VALUES (75, 'San Esteban', 6);
INSERT INTO public.comuna VALUES (76, 'San Felipe', 6);
INSERT INTO public.comuna VALUES (77, 'Santa María', 6);
INSERT INTO public.comuna VALUES (78, 'Santo Domingo', 6);
INSERT INTO public.comuna VALUES (79, 'Valparaíso', 6);
INSERT INTO public.comuna VALUES (80, 'Villa Alemana', 6);
INSERT INTO public.comuna VALUES (81, 'Viña del Mar', 6);
INSERT INTO public.comuna VALUES (82, 'Zapallar', 6);
INSERT INTO public.comuna VALUES (83, 'Chépica', 7);
INSERT INTO public.comuna VALUES (84, 'Chimbarongo', 7);
INSERT INTO public.comuna VALUES (85, 'Codegua', 7);
INSERT INTO public.comuna VALUES (86, 'Coinco', 7);
INSERT INTO public.comuna VALUES (87, 'Coltauco', 7);
INSERT INTO public.comuna VALUES (88, 'Doñihue', 7);
INSERT INTO public.comuna VALUES (89, 'Graneros', 7);
INSERT INTO public.comuna VALUES (90, 'La Estrella', 7);
INSERT INTO public.comuna VALUES (91, 'Las Cabras', 7);
INSERT INTO public.comuna VALUES (92, 'Litueche', 7);
INSERT INTO public.comuna VALUES (93, 'Lolol', 7);
INSERT INTO public.comuna VALUES (94, 'Machalí', 7);
INSERT INTO public.comuna VALUES (95, 'Malloa', 7);
INSERT INTO public.comuna VALUES (96, 'Marchihue', 7);
INSERT INTO public.comuna VALUES (97, 'Mostazal', 7);
INSERT INTO public.comuna VALUES (98, 'Nancagua', 7);
INSERT INTO public.comuna VALUES (99, 'Navidad', 7);
INSERT INTO public.comuna VALUES (100, 'Olivar', 7);
INSERT INTO public.comuna VALUES (101, 'Palmilla', 7);
INSERT INTO public.comuna VALUES (102, 'Paredones', 7);
INSERT INTO public.comuna VALUES (103, 'Peralillo', 7);
INSERT INTO public.comuna VALUES (104, 'Peumo', 7);
INSERT INTO public.comuna VALUES (105, 'Pichidegua', 7);
INSERT INTO public.comuna VALUES (106, 'Pichilemu', 7);
INSERT INTO public.comuna VALUES (107, 'Placilla', 7);
INSERT INTO public.comuna VALUES (108, 'Pumanque', 7);
INSERT INTO public.comuna VALUES (109, 'Quinta de Tilcoco', 7);
INSERT INTO public.comuna VALUES (110, 'Rancagua', 7);
INSERT INTO public.comuna VALUES (111, 'Rengo', 7);
INSERT INTO public.comuna VALUES (112, 'Requínoa', 7);
INSERT INTO public.comuna VALUES (113, 'San Fernando', 7);
INSERT INTO public.comuna VALUES (114, 'Santa Cruz', 7);
INSERT INTO public.comuna VALUES (115, 'San Vicente', 7);
INSERT INTO public.comuna VALUES (116, 'Cauquenes', 8);
INSERT INTO public.comuna VALUES (117, 'Chanco', 8);
INSERT INTO public.comuna VALUES (118, 'Colbún', 8);
INSERT INTO public.comuna VALUES (119, 'Constitución', 8);
INSERT INTO public.comuna VALUES (120, 'Curepto', 8);
INSERT INTO public.comuna VALUES (121, 'Curicó', 8);
INSERT INTO public.comuna VALUES (122, 'Empedrado', 8);
INSERT INTO public.comuna VALUES (123, 'Hualañé', 8);
INSERT INTO public.comuna VALUES (124, 'Licantén', 8);
INSERT INTO public.comuna VALUES (125, 'Linares', 8);
INSERT INTO public.comuna VALUES (126, 'Longaví', 8);
INSERT INTO public.comuna VALUES (127, 'Maule', 8);
INSERT INTO public.comuna VALUES (128, 'Molina', 8);
INSERT INTO public.comuna VALUES (129, 'Parral', 8);
INSERT INTO public.comuna VALUES (130, 'Pelarco', 8);
INSERT INTO public.comuna VALUES (131, 'Pelluhue', 8);
INSERT INTO public.comuna VALUES (132, 'Pencahue', 8);
INSERT INTO public.comuna VALUES (133, 'Rauco', 8);
INSERT INTO public.comuna VALUES (134, 'Retiro', 8);
INSERT INTO public.comuna VALUES (135, 'Río Claro', 8);
INSERT INTO public.comuna VALUES (136, 'Romeral', 8);
INSERT INTO public.comuna VALUES (137, 'Sagrada Familia', 8);
INSERT INTO public.comuna VALUES (138, 'San Clemente', 8);
INSERT INTO public.comuna VALUES (139, 'San Javier', 8);
INSERT INTO public.comuna VALUES (140, 'San Rafael', 8);
INSERT INTO public.comuna VALUES (141, 'Talca', 8);
INSERT INTO public.comuna VALUES (142, 'Teno', 8);
INSERT INTO public.comuna VALUES (143, 'Vichuquén', 8);
INSERT INTO public.comuna VALUES (144, 'Villa Alegre', 8);
INSERT INTO public.comuna VALUES (145, 'Yerbas Buenas', 8);
INSERT INTO public.comuna VALUES (146, 'Bulnes', 9);
INSERT INTO public.comuna VALUES (147, 'Chillán', 9);
INSERT INTO public.comuna VALUES (148, 'Chillán Viejo', 9);
INSERT INTO public.comuna VALUES (149, 'Cobquecura', 9);
INSERT INTO public.comuna VALUES (150, 'Coelemu', 9);
INSERT INTO public.comuna VALUES (151, 'Coihueco', 9);
INSERT INTO public.comuna VALUES (152, 'El Carmen', 9);
INSERT INTO public.comuna VALUES (153, 'Ninhue', 9);
INSERT INTO public.comuna VALUES (154, 'Ñiquén', 9);
INSERT INTO public.comuna VALUES (155, 'Pemuco', 9);
INSERT INTO public.comuna VALUES (156, 'Pinto', 9);
INSERT INTO public.comuna VALUES (157, 'Portezuelo', 9);
INSERT INTO public.comuna VALUES (158, 'Quillón', 9);
INSERT INTO public.comuna VALUES (159, 'Quirihue', 9);
INSERT INTO public.comuna VALUES (160, 'Ránquil', 9);
INSERT INTO public.comuna VALUES (161, 'San Carlos', 9);
INSERT INTO public.comuna VALUES (162, 'San Fabián', 9);
INSERT INTO public.comuna VALUES (163, 'San Ignacio', 9);
INSERT INTO public.comuna VALUES (164, 'San Nicolás', 9);
INSERT INTO public.comuna VALUES (165, 'Treguaco', 9);
INSERT INTO public.comuna VALUES (166, 'Yungay', 9);
INSERT INTO public.comuna VALUES (167, 'Alto Biobío', 10);
INSERT INTO public.comuna VALUES (168, 'Antuco', 10);
INSERT INTO public.comuna VALUES (169, 'Arauco', 10);
INSERT INTO public.comuna VALUES (170, 'Cabrero', 10);
INSERT INTO public.comuna VALUES (171, 'Cañete', 10);
INSERT INTO public.comuna VALUES (172, 'Chiguayante', 10);
INSERT INTO public.comuna VALUES (173, 'Concepción', 10);
INSERT INTO public.comuna VALUES (174, 'Contulmo', 10);
INSERT INTO public.comuna VALUES (175, 'Coronel', 10);
INSERT INTO public.comuna VALUES (176, 'Curanilahue', 10);
INSERT INTO public.comuna VALUES (177, 'Florida', 10);
INSERT INTO public.comuna VALUES (178, 'Hualpén', 10);
INSERT INTO public.comuna VALUES (179, 'Hualqui', 10);
INSERT INTO public.comuna VALUES (180, 'Laja', 10);
INSERT INTO public.comuna VALUES (181, 'Lebu', 10);
INSERT INTO public.comuna VALUES (182, 'Los Alamos', 10);
INSERT INTO public.comuna VALUES (183, 'Los Angeles', 10);
INSERT INTO public.comuna VALUES (184, 'Lota', 10);
INSERT INTO public.comuna VALUES (185, 'Mulchén', 10);
INSERT INTO public.comuna VALUES (186, 'Nacimiento', 10);
INSERT INTO public.comuna VALUES (187, 'Negrete', 10);
INSERT INTO public.comuna VALUES (188, 'Penco', 10);
INSERT INTO public.comuna VALUES (189, 'Quilaco', 10);
INSERT INTO public.comuna VALUES (190, 'Quilleco', 10);
INSERT INTO public.comuna VALUES (191, 'San Pedro de la Paz', 10);
INSERT INTO public.comuna VALUES (192, 'San Rosendo', 10);
INSERT INTO public.comuna VALUES (193, 'Santa Bárbara', 10);
INSERT INTO public.comuna VALUES (194, 'Santa Juana', 10);
INSERT INTO public.comuna VALUES (195, 'Talcahuano', 10);
INSERT INTO public.comuna VALUES (196, 'Tirúa', 10);
INSERT INTO public.comuna VALUES (197, 'Tomé', 10);
INSERT INTO public.comuna VALUES (198, 'Tucapel', 10);
INSERT INTO public.comuna VALUES (199, 'Yumbel', 10);
INSERT INTO public.comuna VALUES (200, 'Angol', 11);
INSERT INTO public.comuna VALUES (201, 'Carahue', 11);
INSERT INTO public.comuna VALUES (202, 'Cholchol', 11);
INSERT INTO public.comuna VALUES (203, 'Collipulli', 11);
INSERT INTO public.comuna VALUES (204, 'Cunco', 11);
INSERT INTO public.comuna VALUES (205, 'Curacautín', 11);
INSERT INTO public.comuna VALUES (206, 'Curarrehue', 11);
INSERT INTO public.comuna VALUES (207, 'Ercilla', 11);
INSERT INTO public.comuna VALUES (208, 'Freire', 11);
INSERT INTO public.comuna VALUES (209, 'Galvarino', 11);
INSERT INTO public.comuna VALUES (210, 'Gorbea', 11);
INSERT INTO public.comuna VALUES (211, 'Lautaro', 11);
INSERT INTO public.comuna VALUES (212, 'Loncoche', 11);
INSERT INTO public.comuna VALUES (213, 'Lonquimay', 11);
INSERT INTO public.comuna VALUES (214, 'Los Sauces', 11);
INSERT INTO public.comuna VALUES (215, 'Lumaco', 11);
INSERT INTO public.comuna VALUES (216, 'Melipeuco', 11);
INSERT INTO public.comuna VALUES (217, 'Nueva Imperial', 11);
INSERT INTO public.comuna VALUES (218, 'Padre Las Casas', 11);
INSERT INTO public.comuna VALUES (219, 'Perquenco', 11);
INSERT INTO public.comuna VALUES (220, 'Pitrufquén', 11);
INSERT INTO public.comuna VALUES (221, 'Pucón', 11);
INSERT INTO public.comuna VALUES (222, 'Purén', 11);
INSERT INTO public.comuna VALUES (223, 'Renaico', 11);
INSERT INTO public.comuna VALUES (224, 'Saavedra', 11);
INSERT INTO public.comuna VALUES (225, 'Temuco', 11);
INSERT INTO public.comuna VALUES (226, 'Teodoro Schmidt', 11);
INSERT INTO public.comuna VALUES (227, 'Toltén', 11);
INSERT INTO public.comuna VALUES (228, 'Traiguén', 11);
INSERT INTO public.comuna VALUES (229, 'Victoria', 11);
INSERT INTO public.comuna VALUES (230, 'Vilcún', 11);
INSERT INTO public.comuna VALUES (231, 'Villarrica', 11);
INSERT INTO public.comuna VALUES (232, 'Corral', 12);
INSERT INTO public.comuna VALUES (233, 'Futrono', 12);
INSERT INTO public.comuna VALUES (234, 'Lago Ranco', 12);
INSERT INTO public.comuna VALUES (235, 'Lanco', 12);
INSERT INTO public.comuna VALUES (236, 'La Unión', 12);
INSERT INTO public.comuna VALUES (237, 'Los Lagos', 12);
INSERT INTO public.comuna VALUES (238, 'Máfil', 12);
INSERT INTO public.comuna VALUES (239, 'Mariquina', 12);
INSERT INTO public.comuna VALUES (240, 'Paillaco', 12);
INSERT INTO public.comuna VALUES (241, 'Panguipulli', 12);
INSERT INTO public.comuna VALUES (242, 'Río Bueno', 12);
INSERT INTO public.comuna VALUES (243, 'Valdivia', 12);
INSERT INTO public.comuna VALUES (244, 'Ancud', 13);
INSERT INTO public.comuna VALUES (245, 'Calbuco', 13);
INSERT INTO public.comuna VALUES (246, 'Castro', 13);
INSERT INTO public.comuna VALUES (247, 'Chaitén', 13);
INSERT INTO public.comuna VALUES (248, 'Chonchi', 13);
INSERT INTO public.comuna VALUES (249, 'Cochamó', 13);
INSERT INTO public.comuna VALUES (250, 'Curaco de Vélez', 13);
INSERT INTO public.comuna VALUES (251, 'Dalcahue', 13);
INSERT INTO public.comuna VALUES (252, 'Fresia', 13);
INSERT INTO public.comuna VALUES (253, 'Frutillar', 13);
INSERT INTO public.comuna VALUES (254, 'Futaleufú', 13);
INSERT INTO public.comuna VALUES (255, 'Hualaihué', 13);
INSERT INTO public.comuna VALUES (256, 'Llanquihue', 13);
INSERT INTO public.comuna VALUES (257, 'Los Muermos', 13);
INSERT INTO public.comuna VALUES (258, 'Maullín', 13);
INSERT INTO public.comuna VALUES (259, 'Osorno', 13);
INSERT INTO public.comuna VALUES (260, 'Palena', 13);
INSERT INTO public.comuna VALUES (261, 'Puerto Montt', 13);
INSERT INTO public.comuna VALUES (262, 'Puerto Octay', 13);
INSERT INTO public.comuna VALUES (263, 'Puerto Varas', 13);
INSERT INTO public.comuna VALUES (264, 'Puqueldón', 13);
INSERT INTO public.comuna VALUES (265, 'Purranque', 13);
INSERT INTO public.comuna VALUES (266, 'Puyehue', 13);
INSERT INTO public.comuna VALUES (267, 'Queilén', 13);
INSERT INTO public.comuna VALUES (268, 'Quellón', 13);
INSERT INTO public.comuna VALUES (269, 'Quemchi', 13);
INSERT INTO public.comuna VALUES (270, 'Quinchao', 13);
INSERT INTO public.comuna VALUES (271, 'Río Negro', 13);
INSERT INTO public.comuna VALUES (272, 'San Juan de la Costa', 13);
INSERT INTO public.comuna VALUES (273, 'San Pablo', 13);
INSERT INTO public.comuna VALUES (274, 'Aysén', 14);
INSERT INTO public.comuna VALUES (275, 'Chile Chico', 14);
INSERT INTO public.comuna VALUES (276, 'Cisnes', 14);
INSERT INTO public.comuna VALUES (277, 'Cochrane', 14);
INSERT INTO public.comuna VALUES (278, 'Coyhaique', 14);
INSERT INTO public.comuna VALUES (279, 'Guaitecas', 14);
INSERT INTO public.comuna VALUES (280, 'Lago Verde', 14);
INSERT INTO public.comuna VALUES (281, 'O''Higgins', 14);
INSERT INTO public.comuna VALUES (282, 'Río Ibáñez', 14);
INSERT INTO public.comuna VALUES (283, 'Tortel', 14);
INSERT INTO public.comuna VALUES (284, 'Antártica', 15);
INSERT INTO public.comuna VALUES (285, 'Cabo de Hornos', 15);
INSERT INTO public.comuna VALUES (286, 'Laguna Blanca', 15);
INSERT INTO public.comuna VALUES (287, 'Natales', 15);
INSERT INTO public.comuna VALUES (288, 'Porvenir', 15);
INSERT INTO public.comuna VALUES (289, 'Primavera', 15);
INSERT INTO public.comuna VALUES (290, 'Punta Arenas', 15);
INSERT INTO public.comuna VALUES (291, 'Río Verde', 15);
INSERT INTO public.comuna VALUES (292, 'San Gregorio', 15);
INSERT INTO public.comuna VALUES (293, 'Timaukel', 15);
INSERT INTO public.comuna VALUES (294, 'Torres del Paine', 15);
INSERT INTO public.comuna VALUES (295, 'Alhué', 16);
INSERT INTO public.comuna VALUES (296, 'Buin', 16);
INSERT INTO public.comuna VALUES (297, 'Calera de Tango', 16);
INSERT INTO public.comuna VALUES (298, 'Cerrillos', 16);
INSERT INTO public.comuna VALUES (299, 'Cerro Navia', 16);
INSERT INTO public.comuna VALUES (300, 'Colina', 16);
INSERT INTO public.comuna VALUES (301, 'Conchalí', 16);
INSERT INTO public.comuna VALUES (302, 'Curacaví', 16);
INSERT INTO public.comuna VALUES (303, 'El Bosque', 16);
INSERT INTO public.comuna VALUES (304, 'El Monte', 16);
INSERT INTO public.comuna VALUES (305, 'Estación Central', 16);
INSERT INTO public.comuna VALUES (306, 'Huechuraba', 16);
INSERT INTO public.comuna VALUES (307, 'Independencia', 16);
INSERT INTO public.comuna VALUES (308, 'Isla de Maipo', 16);
INSERT INTO public.comuna VALUES (309, 'La Cisterna', 16);
INSERT INTO public.comuna VALUES (310, 'La Florida', 16);
INSERT INTO public.comuna VALUES (311, 'La Granja', 16);
INSERT INTO public.comuna VALUES (312, 'Lampa', 16);
INSERT INTO public.comuna VALUES (313, 'La Pintana', 16);
INSERT INTO public.comuna VALUES (314, 'La Reina', 16);
INSERT INTO public.comuna VALUES (315, 'Las Condes', 16);
INSERT INTO public.comuna VALUES (316, 'Lo Barnechea', 16);
INSERT INTO public.comuna VALUES (317, 'Lo Espejo', 16);
INSERT INTO public.comuna VALUES (318, 'Lo Prado', 16);
INSERT INTO public.comuna VALUES (319, 'Macul', 16);
INSERT INTO public.comuna VALUES (320, 'Maipú', 16);
INSERT INTO public.comuna VALUES (321, 'María Pinto', 16);
INSERT INTO public.comuna VALUES (322, 'Melipilla', 16);
INSERT INTO public.comuna VALUES (323, 'Ñuñoa', 16);
INSERT INTO public.comuna VALUES (324, 'Padre Hurtado', 16);
INSERT INTO public.comuna VALUES (325, 'Paine', 16);
INSERT INTO public.comuna VALUES (326, 'Pedro Aguirre Cerda', 16);
INSERT INTO public.comuna VALUES (327, 'Peñaflor', 16);
INSERT INTO public.comuna VALUES (328, 'Peñalolén', 16);
INSERT INTO public.comuna VALUES (329, 'Pirque', 16);
INSERT INTO public.comuna VALUES (330, 'Providencia', 16);
INSERT INTO public.comuna VALUES (331, 'Pudahuel', 16);
INSERT INTO public.comuna VALUES (332, 'Puente Alto', 16);
INSERT INTO public.comuna VALUES (333, 'Quilicura', 16);
INSERT INTO public.comuna VALUES (334, 'Quinta Normal', 16);
INSERT INTO public.comuna VALUES (335, 'Recoleta', 16);
INSERT INTO public.comuna VALUES (336, 'Renca', 16);
INSERT INTO public.comuna VALUES (337, 'San Bernardo', 16);
INSERT INTO public.comuna VALUES (338, 'San Joaquín', 16);
INSERT INTO public.comuna VALUES (339, 'San José de Maipo', 16);
INSERT INTO public.comuna VALUES (340, 'San Miguel', 16);
INSERT INTO public.comuna VALUES (341, 'San Pedro', 16);
INSERT INTO public.comuna VALUES (342, 'San Ramón', 16);
INSERT INTO public.comuna VALUES (343, 'Santiago', 16);
INSERT INTO public.comuna VALUES (344, 'Talagante', 16);
INSERT INTO public.comuna VALUES (345, 'Tiltil', 16);
INSERT INTO public.comuna VALUES (346, 'Vitacura', 16);


--
-- TOC entry 4795 (class 0 OID 16466)
-- Dependencies: 216
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.region VALUES (1, 'Arica y Parinacota');
INSERT INTO public.region VALUES (2, 'Tarapacá');
INSERT INTO public.region VALUES (3, 'Antofagasta');
INSERT INTO public.region VALUES (4, 'Atacama');
INSERT INTO public.region VALUES (5, 'Coquimbo');
INSERT INTO public.region VALUES (6, 'Valparaíso');
INSERT INTO public.region VALUES (7, 'Región del Libertador General Bernardo O''Higgins');
INSERT INTO public.region VALUES (8, 'Maule');
INSERT INTO public.region VALUES (9, 'Ñuble');
INSERT INTO public.region VALUES (10, 'Biobío');
INSERT INTO public.region VALUES (11, 'La Araucanía');
INSERT INTO public.region VALUES (12, 'Los Ríos');
INSERT INTO public.region VALUES (13, 'Los Lagos');
INSERT INTO public.region VALUES (14, 'Aysén del General Carlos Ibáñez del Campo');
INSERT INTO public.region VALUES (15, 'Magallanes y de la Antártica Chilena');
INSERT INTO public.region VALUES (16, 'Metropolitana de Santiago');


--
-- TOC entry 4798 (class 0 OID 16486)
-- Dependencies: 219
-- Data for Name: voto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.voto VALUES ('Andres Camiroaga', 'pepe', 123, 'pepe@mail.com', 5, 36, 1, 1, 0, 1, 0);
INSERT INTO public.voto VALUES ('Enrico Alberto', 'Alfredo', 1234567, 'user@mail.com', 2, 8, 1, 1, 1, 0, 0);
INSERT INTO public.voto VALUES ('Enrico Alberto', 'Alfredo', 1234, 'Test@gmail.com', 5, 33, 1, 0, 1, 1, 0);
INSERT INTO public.voto VALUES ('Enrico Alberto', 'Alfredo', 12345678, 'user@mail.com', 3, 15, 1, 1, 1, 0, 0);
INSERT INTO public.voto VALUES ('Enrico Alberto', 'Alfredo', 1, '', 14, 274, 1, 1, 1, 0, 0);
INSERT INTO public.voto VALUES ('1', 'Alfredo', 65432, 'user@mail.com', 1, 2, 1, 1, 1, 0, 0);


--
-- TOC entry 4805 (class 0 OID 0)
-- Dependencies: 217
-- Name: comuna_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comuna_id_seq', 346, true);


--
-- TOC entry 4648 (class 2606 OID 16478)
-- Name: comuna comuna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comuna
    ADD CONSTRAINT comuna_pkey PRIMARY KEY (id);


--
-- TOC entry 4650 (class 2606 OID 16492)
-- Name: voto voto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voto
    ADD CONSTRAINT voto_pkey PRIMARY KEY (rut);


-- Completed on 2024-01-19 16:34:35

--
-- PostgreSQL database dump complete
--

