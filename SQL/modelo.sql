BEGIN TRANSACTION;

DROP TABLE IF EXISTS mensajes CASCADE;
CREATE TABLE mensajes (
    pk bigserial NOT NULL,
    fecha timestamp NOT NULL DEFAULT NOW(),
    mensaje text,
    rut bigint NOT NULL DEFAULT '1',
    PRIMARY KEY (pk)
);

DROP TABLE IF EXISTS accesos CASCADE;
CREATE TABLE accesos (
    pk bigserial NOT NULL,
    fecha timestamp NOT NULL DEFAULT NOW(),
    rut bigint NOT NULL,
    ip varchar(255) NOT NULL,
    accion varchar(255) NOT NULL,
    UNIQUE (fecha, rut, accion),
    PRIMARY KEY (pk)
);

INSERT INTO mensajes (mensaje) VALUES ('Rendirse es lo que mata a las personas. Es sólo cuando se resisten a rendirse a pesar de todo lo demás, que ellos obtienen el derecho de caminar por la noble senda de la humanidad.');
INSERT INTO mensajes (mensaje) VALUES ('Es un error capital el teorizar antes de poseer datos. Insensiblemente, uno comienza a deformar los hechos para hacerlos encajar en las teorías en lugar de encajar las teorías en los hechos');
INSERT INTO mensajes (mensaje) VALUES ('Lo que un hombre puede inventar, otro lo puede descubrir');
INSERT INTO mensajes (mensaje) VALUES ('Es un error capital el teorizar antes de poseer datos. Insensiblemente, uno comienza a deformar los hechos para hacerlos encajar en las teorías en lugar de encajar las teorías en los hechos');
INSERT INTO mensajes (mensaje) VALUES ('Nada aclara tanto un caso como exponérselo a otra persona');
INSERT INTO mensajes (mensaje) VALUES ('Cuando todo aquello que es imposible ha sido eliminado, lo que quede, por muy improbable que parezca, es la verdad');
INSERT INTO mensajes (mensaje) VALUES ('Nada resulta más engañoso que un hecho evidente');
INSERT INTO mensajes (mensaje) VALUES ('Un tonto encuentra siempre otro más tonto que lo admira');
INSERT INTO mensajes (mensaje) VALUES ('Las facultades se agudizan cuando las dejas con hambre');
INSERT INTO mensajes (mensaje) VALUES ('Datos, datos, datos. No puedo fabricar ladrillos sin arcilla');
INSERT INTO mensajes (mensaje) VALUES ('Cuando no hay humildad, las personas se degradan.');
INSERT INTO mensajes (mensaje) VALUES ('Lo más razonable que se ha dicho sobre el matrimonio y sobre el celibato es esto: hagas lo que hagas te arrepentirás.');


DROP TABLE IF EXISTS paises CASCADE;
CREATE TABLE paises (
    pk serial NOT NULL,
    cod_num int NOT NULL,
    alfa_tres varchar(3) NOT NULL,
    alfa_dos varchar(2) NOT NULL,
    nombre varchar(255) NOT NULL,
    UNIQUE (cod_num, alfa_dos, alfa_tres),
    UNIQUE (nombre),
    UNIQUE (alfa_dos),
    PRIMARY KEY (pk)
);

INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '004',  'AFG',  'AF',  'Afganistán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '248',  'ALA',  'AX',  'Åland');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '008',  'ALB',  'AL',  'Albania');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '276',  'DEU',  'DE',  'Alemania');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '020',  'AND',  'AD',  'Andorra');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '024',  'AGO',  'AO',  'Angola');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '660',  'AIA',  'AI',  'Anguila');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '010',  'ATA',  'AQ',  'Antártida');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '028',  'ATG',  'AG',  'Antigua y Barbuda');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '530',  'ANT',  'AN',  'Antillas Neerlandesas');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '682',  'SAU',  'SA',  'Arabia Saudita');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '012',  'DZA',  'DZ',  'Argelia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '032',  'ARG',  'AR',  'Argentina');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '051',  'ARM',  'AM',  'Armenia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '533',  'ABW',  'AW',  'Aruba');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '036',  'AUS',  'AU',  'Australia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '040',  'AUT',  'AT',  'Austria');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '031',  'AZE',  'AZ',  'Azerbaiyán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '044',  'BHS',  'BS',  'Bahamas');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '048',  'BHR',  'BH',  'Bahréin');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '050',  'BGD',  'BD',  'Bangladesh');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '052',  'BRB',  'BB',  'Barbados');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '112',  'BLR',  'BY',  'Bielorrusia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '056',  'BEL',  'BE',  'Bélgica');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '084',  'BLZ',  'BZ',  'Belice');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '204',  'BEN',  'BJ',  'Benín');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '060',  'BMU',  'BM',  'Bermudas');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '064',  'BTN',  'BT',  'Bután');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '068',  'BOL',  'BO',  'Bolivia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '070',  'BIH',  'BA',  'Bosnia y Herzegovina');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '072',  'BWA',  'BW',  'Botsuana');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '074',  'BVT',  'BV',  'Isla Bouvet');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '076',  'BRA',  'BR',  'Brasil');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '096',  'BRN',  'BN',  'Brunéi');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '100',  'BGR',  'BG',  'Bulgaria');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '854',  'BFA',  'BF',  'Burkina Faso');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '108',  'BDI',  'BI',  'Burundi');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '132',  'CPV',  'CV',  'Cabo Verde');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '136',  'CYM',  'KY',  'Islas Caimán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '116',  'KHM',  'KH',  'Camboya');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '120',  'CMR',  'CM',  'Camerún');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '124',  'CAN',  'CA',  'Canadá');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '140',  'CAF',  'CF',  'República Centroafricana');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '148',  'TCD',  'TD',  'Chad');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '203',  'CZE',  'CZ',  'República Checa');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '152',  'CHL',  'CL',  'Chile');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '156',  'CHN',  'CN',  'China');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '196',  'CYP',  'CY',  'Chipre');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '166',  'CCK',  'CC',  'Islas Cocos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '170',  'COL',  'CO',  'Colombia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '174',  'COM',  'KM',  'Comoras');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '178',  'COG',  'CG',  'República del Congo');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '180',  'COD',  'CD',  'República Democrática del Congo');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '184',  'COK',  'CK',  'Islas Cook');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '408',  'PRK',  'KP',  'Corea del Norte');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '410',  'KOR',  'KR',  'Corea del Sur');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '384',  'CIV',  'CI',  'Costa de Marfil');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '188',  'CRI',  'CR',  'Costa Rica');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '191',  'HRV',  'HR',  'Croacia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '192',  'CUB',  'CU',  'Cuba');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '208',  'DNK',  'DK',  'Dinamarca');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '212',  'DMA',  'DM',  'Dominica');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '214',  'DOM',  'DO',  'República Dominicana');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '218',  'ECU',  'EC',  'Ecuador');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '818',  'EGY',  'EG',  'Egipto');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '222',  'SLV',  'SV',  'El Salvador');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '784',  'ARE',  'AE',  'Emiratos Árabes Unidos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '232',  'ERI',  'ER',  'Eritrea');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '703',  'SVK',  'SK',  'Eslovaquia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '705',  'SVN',  'SI',  'Eslovenia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '724',  'ESP',  'ES',  'España');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '840',  'USA',  'US',  'Estados Unidos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '581',  'UMI',  'UM',  'Islas ultramarinas de EstadosUnidos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '233',  'EST',  'EE',  'Estonia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '231',  'ETH',  'ET',  'Etiopía');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '234',  'FRO',  'FO',  'Islas Feroe');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '608',  'PHL',  'PH',  'Filipinas');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '246',  'FIN',  'FI',  'Finlandia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '242',  'FJI',  'FJ',  'Fiyi');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '250',  'FRA',  'FR',  'Francia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '266',  'GAB',  'GA',  'Gabón');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '270',  'GMB',  'GM',  'Gambia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '268',  'GEO',  'GE',  'Georgia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '239',  'SGS',  'GS',  'Islas Georgias del Sur');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '288',  'GHA',  'GH',  'Ghana');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '292',  'GIB',  'GI',  'Gibraltar');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '308',  'GRD',  'GD',  'Granada');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '300',  'GRC',  'GR',  'Grecia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '304',  'GRL',  'GL',  'Groenlandia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '312',  'GLP',  'GP',  'Guadalupe');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '316',  'GUM',  'GU',  'Guam');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '320',  'GTM',  'GT',  'Guatemala');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '254',  'GUF',  'GF',  'Guayana Francesa');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '831',  'GGY',  'GG',  'Guernsey');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '324',  'GIN',  'GN',  'Guinea');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '226',  'GNQ',  'GQ',  'Guinea Ecuatorial');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '624',  'GNB',  'GW',  'Guinea-Bissau');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '328',  'GUY',  'GY',  'Guyana');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '332',  'HTI',  'HT',  'Haití');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '334',  'HMD',  'HM',  'Islas Heard y McDonald');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '340',  'HND',  'HN',  'Honduras');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '344',  'HKG',  'HK',  'Hong Kong');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '348',  'HUN',  'HU',  'Hungría');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '356',  'IND',  'IN',  'India');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '360',  'IDN',  'ID',  'Indonesia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '364',  'IRN',  'IR',  'Irán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '368',  'IRQ',  'IQ',  'Iraq');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '372',  'IRL',  'IE',  'Irlanda');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '352',  'ISL',  'IS',  'Islandia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '376',  'ISR',  'IL',  'Israel');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '380',  'ITA',  'IT',  'Italia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '388',  'JAM',  'JM',  'Jamaica');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '392',  'JPN',  'JP',  'Japón');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '832',  'JEY',  'JE',  'Jersey');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '400',  'JOR',  'JO',  'Jordania');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '398',  'KAZ',  'KZ',  'Kazajistán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '404',  'KEN',  'KE',  'Kenia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '417',  'KGZ',  'KG',  'Kirguistán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '296',  'KIR',  'KI',  'Kiribati');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '414',  'KWT',  'KW',  'Kuwait');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '418',  'LAO',  'LA',  'Laos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '426',  'LSO',  'LS',  'Lesoto');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '428',  'LVA',  'LV',  'Letonia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '422',  'LBN',  'LB',  'Líbano');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '430',  'LBR',  'LR',  'Liberia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '434',  'LBY',  'LY',  'Libia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '438',  'LIE',  'LI',  'Liechtenstein');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '440',  'LTU',  'LT',  'Lituania');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '442',  'LUX',  'LU',  'Luxemburgo');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '446',  'MAC',  'MO',  'Macao');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '807',  'MKD',  'MK',  'ARY Macedonia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '450',  'MDG',  'MG',  'Madagascar');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '458',  'MYS',  'MY',  'Malasia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '454',  'MWI',  'MW',  'Malawi');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '462',  'MDV',  'MV',  'Maldivas');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '466',  'MLI',  'ML',  'Malí');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '470',  'MLT',  'MT',  'Malta');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '238',  'FLK',  'FK',  'Islas Malvinas');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '833',  'IMN',  'IM',  'Isla de Man');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '580',  'MNP',  'MP',  'Islas Marianas del Norte');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '504',  'MAR',  'MA',  'Marruecos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '584',  'MHL',  'MH',  'Islas Marshall');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '474',  'MTQ',  'MQ',  'Martinica');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '480',  'MUS',  'MU',  'Mauricio');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '478',  'MRT',  'MR',  'Mauritania');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '175',  'MYT',  'YT',  'Mayotte');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '484',  'MEX',  'MX',  'México');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '583',  'FSM',  'FM',  'Micronesia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '498',  'MDA',  'MD',  'Moldavia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '492',  'MCO',  'MC',  'Mónaco');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '496',  'MNG',  'MN',  'Mongolia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '499',  'MNE',  'ME',  'Montenegro');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '500',  'MSR',  'MS',  'Montserrat');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '508',  'MOZ',  'MZ',  'Mozambique');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '104',  'MMR',  'MM',  'Birmania');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '516',  'NAM',  'NA',  'Namibia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '520',  'NRU',  'NR',  'Nauru');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '162',  'CXR',  'CX',  'Isla de Navidad');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '524',  'NPL',  'NP',  'Nepal');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '558',  'NIC',  'NI',  'Nicaragua');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '562',  'NER',  'NE',  'Níger');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '566',  'NGA',  'NG',  'Nigeria');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '570',  'NIU',  'NU',  'Niue');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '574',  'NFK',  'NF',  'Norfolk');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '578',  'NOR',  'NO',  'Noruega');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '540',  'NCL',  'NC',  'Nueva Caledonia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '554',  'NZL',  'NZ',  'Nueva Zelanda');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '512',  'OMN',  'OM',  'Omán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '528',  'NLD',  'NL',  'Países Bajos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '586',  'PAK',  'PK',  'Pakistán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '585',  'PLW',  'PW',  'Palaos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '275',  'PSE',  'PS',  'Territorios palestinos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '591',  'PAN',  'PA',  'Panamá');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '598',  'PNG',  'PG',  'Papúa Nueva Guinea');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '600',  'PRY',  'PY',  'Paraguay');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '604',  'PER',  'PE',  'Perú');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '612',  'PCN',  'PN',  'Islas Pitcairn');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '258',  'PYF',  'PF',  'Polinesia Francesa');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '616',  'POL',  'PL',  'Polonia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '620',  'PRT',  'PT',  'Portugal');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '630',  'PRI',  'PR',  'Puerto Rico');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '634',  'QAT',  'QA',  'Qatar');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '826',  'GBR',  'GB',  'Reino Unido');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '638',  'REU',  'RE',  'Reunión');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '646',  'RWA',  'RW',  'Ruanda');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '642',  'ROU',  'RO',  'Rumania');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '643',  'RUS',  'RU',  'Rusia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '732',  'ESH',  'EH',  'Sahara Occidental');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '090',  'SLB',  'SB',  'Islas Salomón');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '882',  'WSM',  'WS',  'Samoa');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '016',  'ASM',  'AS',  'Americana Samoa Americana');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '659',  'KNA',  'KN',  'San Cristóbal y Nieves');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '674',  'SMR',  'SM',  'San Marino');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '666',  'SPM',  'PM',  'San Pedro y Miquelón');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '670',  'VCT',  'VC',  'San Vicente y lasGranadinas');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '654',  'SHN',  'SH',  'Santa Helena');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '662',  'LCA',  'LC',  'Santa Lucía');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '678',  'STP',  'ST',  'Santo Tomé y Príncipe');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '686',  'SEN',  'SN',  'Senegal');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '688',  'SRB',  'RS',  'Serbia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '690',  'SYC',  'SC',  'Seychelles');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '694',  'SLE',  'SL',  'Sierra Leona');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '702',  'SGP',  'SG',  'Singapur');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '760',  'SYR',  'SY',  'Siria');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '706',  'SOM',  'SO',  'Somalia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '144',  'LKA',  'LK',  'Sri Lanka');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '748',  'SWZ',  'SZ',  'Suazilandia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '710',  'ZAF',  'ZA',  'Sudáfrica');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '736',  'SDN',  'SD',  'Sudán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '752',  'SWE',  'SE',  'Suecia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '756',  'CHE',  'CH',  'Suiza');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '740',  'SUR',  'SR',  'Surinam');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '744',  'SJM',  'SJ',  'Svalbard y Jan Mayen');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '764',  'THA',  'TH',  'Tailandia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '158',  'TWN',  'TW',  'República de China');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '834',  'TZA',  'TZ',  'Tanzania');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '762',  'TJK',  'TJ',  'Tayikistán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '086',  'IOT',  'IO',  'Territorio Británico del Océano Índico');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '260',  'ATF',  'TF',  'Territorios Australes Franceses');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '626',  'TLS',  'TL',  'Timor Oriental');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '768',  'TGO',  'TG',  'Togo');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '772',  'TKL',  'TK',  'Tokelau');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '776',  'TON',  'TO',  'Tonga');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '780',  'TTO',  'TT',  'Trinidad y Tobago');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '788',  'TUN',  'TN',  'Túnez');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '796',  'TCA',  'TC',  'Islas Turcas y Caicos');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '795',  'TKM',  'TM',  'Turkmenistán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '792',  'TUR',  'TR',  'Turquía');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '798',  'TUV',  'TV',  'Tuvalu');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '804',  'UKR',  'UA',  'Ucrania');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '800',  'UGA',  'UG',  'Uganda');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '858',  'URY',  'UY',  'Uruguay');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '860',  'UZB',  'UZ',  'Uzbekistán');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '548',  'VUT',  'VU',  'Vanuatu');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '336',  'VAT',  'VA',  'Ciudad del Vaticano');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '862',  'VEN',  'VE',  'Venezuela');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '704',  'VNM',  'VN',  'Vietnam');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '092',  'VGB',  'VG',  'Islas Vírgenes Británicas');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '850',  'VIR',  'VI',  'Islas Vírgenes Estadounidenses');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '876',  'WLF',  'WF',  'Wallis y Futuna');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '887',  'YEM',  'YE',  'Yemen');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '262',  'DJI',  'DJ',  'Yibuti');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '894',  'ZMB',  'ZM',  'Zambia');
INSERT INTO paises (cod_num, alfa_tres, alfa_dos, nombre) VALUES ( '716',  'ZWE',  'ZW',  'Zimbabue');

DROP TABLE IF EXISTS geo_ips CASCADE;
CREATE TABLE geo_ips (
    pk bigserial NOT NULL,
    red inet NOT NULL,
    pais_fk int NOT NULL REFERENCES paises(pk) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (red),
    PRIMARY KEY (pk)
);

COMMIT;
