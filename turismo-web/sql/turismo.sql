
delete from PAQUETETURISTICOENTITY_PLANAGENDADOENTITY;
delete from PLANAGENDADOENTITY;
delete from PlanEntity_PreferenciasEntity;
delete from PlanEntity_ValoracionesEntity;
delete from PlanEntity_GuiaEntity;
delete from PAQUETETURISTICOENTITY_PAGOENTITY;
delete from PlanEntity;
delete from usuarioentity_preferenciasentity;
delete from PreferenciasEntity;
delete from UBICACIONENTITY;
delete from GuiaEntity;
delete from FACTURAENTITY;
delete from PAQUETETURISTICOENTITY;
delete from TARJETADECREDITOENTITY;
delete from BLOGENTITY_COMENTARIOENTITY;
delete from COMENTARIOENTITY;
delete from BLOGENTITY;
delete from USUARIOENTITY;
delete from PAGOENTITY;
delete from VALORACIONESENTITY;

/*Parte Ubicacion*/
insert into UBICACIONENTITY (id,pais,ciudad,latitud,longitud) values (10000,'Colombia','Bogota',4.6056725,-74.0730351);
insert into UBICACIONENTITY (id,pais,ciudad,latitud,longitud) values (10001,'Francia','Paris',10,10);
insert into UBICACIONENTITY (id,pais,ciudad,latitud,longitud) values (10002,'España','Madrid',41.4059676,2.1686392);
insert into UBICACIONENTITY (id,pais,ciudad,latitud,longitud) values (10003,'Holanda','Amsterdam',4.5754466,-74.2487117);
insert into UBICACIONENTITY (id,pais,ciudad,latitud,longitud) values (10004,'Alemania','Berlín',52.5350521,13.3880011);
insert into UBICACIONENTITY (id,pais,ciudad,latitud,longitud) values (10005,'Francia','Paris',48.8583701,2.2922926);
insert into UBICACIONENTITY (id,pais,ciudad,latitud,longitud) values (10006,'Italia','Roma',41.8902102,12.4900422);

insert into BlogEntity (id, tema , likes, descripcion) values (10000,'mordor paraiso en primavera',990,'¿Dónde está Mordor?, te preguntas. La respuesta es sencilla: Mordor está en Madrid. El llamado Camino de Mordor es una ruta en bicicleta que corre en paralelo al río Aulencia desde Colmenarejo hasta Villanueva del Pardillo.');
insert into BlogEntity (id, tema , likes, descripcion) values (20000,'international blog',20,'EARLIER this month Peking University played host to perhaps the grandest global gathering ever of the higher-education business. Senior figures from the world’s most famous universities—Harvard and Yale, Oxford and Cambridge');
insert into BlogEntity (id, tema , likes, descripcion) values (30000,'comida en la india ',30,'France, in Western Europe, encompasses medieval cities, alpine villages and Mediterranean beaches. Paris, its capital, is famed for its fashion houses, classical art museums including the Louvre and monuments like the Eiffel Tower.');
insert into BlogEntity (id, tema , likes, descripcion) values (40000,'franceses y parisinas ',0,'ice is the staple food (as is with all South Indian states) eaten with lentil preparations such as pappu (lentils) and pulusu (stew) and spicy vegetables or curries. In Andhra, leafy greens or vegetables such as bottle-gourd.');
insert into BlogEntity (id, tema , likes, descripcion) values (50000,'cambio de vida en Soachi ',20,'este es mi segundo blog');
insert into BlogEntity (id, tema , likes, descripcion) values (60000,'hola hola desde hawaii ',30,'este es mi tercero blog');
insert into BlogEntity (id, tema , likes, descripcion)values (70000,'como comprar efectivamente ',0,'este es mi primer blog');
insert into BlogEntity (id, tema , likes, descripcion) values (80000,'colecciones analogas el blog',20,'este es mi segundo blog');
insert into BlogEntity (id, tema , likes, descripcion) values (90000,'este es mi decimoquinto blog',30,'este es mi tercero blog');

insert into ComentarioEntity (id, comentario) values (10000,'gran blog');
insert into ComentarioEntity (id, comentario) values (20000,'comentar o no comentar esa es la cuestion');
insert into ComentarioEntity (id, comentario) values (30000,'mentiroso, yp fui y todo salio muy ben ');
insert into ComentarioEntity (id, comentario) values (40000,'me gusta comentar, lol jeje');
insert into ComentarioEntity (id, comentario) values (50000,'por casualidad sabrias donde puedo ir a comer cerca?');
insert into ComentarioEntity (id, comentario) values (60000,'taque taraque taque');
insert into ComentarioEntity (id, comentario) values (70000,'lorem ipsum');
insert into ComentarioEntity (id, comentario) values (80000,'wendys es mas rico ');
insert into ComentarioEntity (id, comentario) values (90000,' tu mama !!');

insert into BLOGENTITY_COMENTARIOENTITY (BLOGENTITY_ID, COMENTARIOS_ID) values (10000,10000);
insert into BLOGENTITY_COMENTARIOENTITY (BLOGENTITY_ID, COMENTARIOS_ID) values (10000,20000);
insert into BLOGENTITY_COMENTARIOENTITY (BLOGENTITY_ID, COMENTARIOS_ID) values (10000,30000);
insert into BLOGENTITY_COMENTARIOENTITY (BLOGENTITY_ID, COMENTARIOS_ID) values (10000,40000);
insert into BLOGENTITY_COMENTARIOENTITY (BLOGENTITY_ID, COMENTARIOS_ID) values (50000,50000);
insert into BLOGENTITY_COMENTARIOENTITY (BLOGENTITY_ID, COMENTARIOS_ID) values (60000,60000);
insert into BLOGENTITY_COMENTARIOENTITY (BLOGENTITY_ID, COMENTARIOS_ID) values (70000,70000);
insert into BLOGENTITY_COMENTARIOENTITY (BLOGENTITY_ID, COMENTARIOS_ID) values (80000,80000);
insert into BLOGENTITY_COMENTARIOENTITY (BLOGENTITY_ID, COMENTARIOS_ID) values (90000,90000);

insert into PreferenciasEntity (id, tipoPlan) values (10000,'Familiar');
insert into PreferenciasEntity (id, tipoPlan) values (10001,'Compras');
insert into PreferenciasEntity (id, tipoPlan) values (10002,'Museo');

insert into PlanEntity (id, archivo, cantidadpersonas, descripcion, duracion, name, precio, restricciones, ubicacion_id) values (9999, 'http://static.alfabetajuega.com/abj_public_files/multimedia/imagenes/201601/133204.alfabetajuega-mordor-070116.jpg', 4,'Recorrer mordor. Este se puede borrar porque no tiene asociacion con plan agendado', 180, 'Mordor', 66666,'restriccionxyz',10001);
insert into PlanEntity (id, archivo, cantidadpersonas, descripcion, duracion, name, precio, restricciones, ubicacion_id) values (10000, 'https://cdn2.gbot.me/photos/dt/Db/1515289189/-_Iglesia_de_Monserrate_in-20000000016204685-500x375.jpg', 1,'Subir a monserrate', 180, 'Monserrate', 20000,'restriccion shida',10000);
insert into PlanEntity (id, archivo, cantidadpersonas, descripcion, duracion, name, precio, restricciones, ubicacion_id) values (10001, 'https://4ey4y42r25eb3oaha12oumbs-wpengine.netdna-ssl.com/wp-content/uploads/Gaudi-and-Sagrada-Familia-Tour-1.jpg', 2,'Recorrido por sagrada familia', 180, 'Sagrada familia', 60000,'restriccion shida',10002);
insert into PlanEntity (id, archivo, cantidadpersonas, descripcion, duracion, name, precio, restricciones, ubicacion_id) values (10002, 'http://elmerey.com/wp-content/uploads/2017/08/14/Muro-de-Berlin.jpg', 4,'Recorrer muro de berlin', 180, 'Muro de berlin', 20000,'restriccion shida',10004);
insert into PlanEntity (id, archivo, cantidadpersonas, descripcion, duracion, name, precio, restricciones, ubicacion_id) values (10003, 'http://i.ngenespanol.com/dam/tbg/traveler/agenda/17/09/28/torre-eiffel-300-millones.jpg.imgw.1280.1280.jpeg', 9,'Subir la torre Eiffel', 180, 'Torre Eiffel', 80000,'restriccion shida',10005);
insert into PlanEntity (id, archivo, cantidadpersonas, descripcion, duracion, name, precio, restricciones, ubicacion_id) values (10005, 'https://www.audioguiaroma.com/imagenes/coliseo-roma.jpg', 7,'Descibrir los secretos del coliseo Romano', 180, 'Coliseo de Roma', 100000,'restriccion shida',10006);


insert into ValoracionesEntity (id, calificacion, comentario) values (10001, 5, 'Buena');
insert into ValoracionesEntity (id, calificacion, comentario) values (10004, 4, 'Buenita');
insert into ValoracionesEntity (id, calificacion, comentario) values (10006, 3, ':0');
insert into ValoracionesEntity (id, calificacion, comentario) values (10007, 1, 'D:<');
insert into ValoracionesEntity (id, calificacion, comentario) values (10002, 3, 'Regular');
insert into ValoracionesEntity (id, calificacion, comentario) values (10003, 1, 'Mala');
insert into ValoracionesEntity (id, calificacion, comentario) values (10005, 2, ':C');


insert into GuiaEntity (id, idiomaguia, name) values (10000,'Chino','David');
insert into GuiaEntity (id, idiomaguia, name) values (10001,'Ruso','Francisco');
insert into GuiaEntity (id, idiomaguia, name) values (10002,'Espaniol','Sebastian');
insert into GuiaEntity (id, idiomaguia, name) values (10003,'Portugues','Luis');
insert into GuiaEntity (id, idiomaguia, name) values (10004,'Arabe','Julian');

insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10000, 10000);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10000, 10001);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (9999, 10000);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (9999, 10001);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10001, 10002);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10001, 10003);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10002, 10004);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10002, 10002);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10003, 10004);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10003, 10002);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10005, 10002);
insert into PLANENTITY_GUIAENTITY (PLANENTITY_ID, GUIAS_ID) values (10005, 10001);

insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (9999, 10000);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (9999, 10001);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (9999, 10002);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (10000, 10000);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (10001, 10000);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (10001, 10001);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (10002, 10001);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (10002, 10002);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (10003, 10002);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (10005, 10000);
insert into PLANENTITY_PREFERENCIASENTITY (PLANENTITY_ID, PREFERENCIASPLAN_ID) values (10005, 10001);

insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (10000, 10001);
insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (9999, 10002);
insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (9999, 10003);
insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (10001, 10004);
insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (10002, 10005);
insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (10001, 10006);
insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (10002, 10007);
insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (10003, 10001);
insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (10005, 10002);
insert into PLANENTITY_VALORACIONESENTITY (PLANENTITY_ID, VALORACIONESPLAN_ID) values (10005, 10003);


/* Parte que se nececita para tajetas*/
insert into UsuarioEntity (id,apellido,contrasenia,correo,esAdministrador,idioma,name,telefono) values (10001,'benitez','1234','benitez@gmail.com',0,'español','sebastian',4276067);
insert into UsuarioEntity (id,apellido,contrasenia,correo,esAdministrador,idioma,name,telefono) values (10002,'ramirez','5678','ramirez@gmail.com',0,'español','juan',1234567);
insert into UsuarioEntity (id,apellido,contrasenia,correo,esAdministrador,idioma,name,telefono) values (10003,'gutierrez','9012','gutierrez@gmail.com',0,'español','francisco',8901223);



insert into TarjetaDeCreditoEntity (id,cdv,cedula,name,numero,Usuario_id) values (10000,123,1016078997,'sebastian',1234123412341234,10001);
insert into TarjetaDeCreditoEntity (id,cdv,cedula,name,numero,Usuario_id) values (10001,123,1016078997,'sebastian',1234123412341235,10001);
insert into TarjetaDeCreditoEntity (id,cdv,cedula,name,numero,Usuario_id) values (10002,123,1016078997,'sebastian',1234123412341236,10001);


/* Parte Facturas*/

insert into PAQUETETURISTICOENTITY(id,Completado) values (10000,1);
insert into PAQUETETURISTICOENTITY(id,Completado) values (10001,0);
insert into PAQUETETURISTICOENTITY(id,Completado) values (10002,0);

insert into FACTURAENTITY (id,costo,name,TARJETADECREDITO_ID,PAQUETETURISTICO_ID) values (10000,800000,'a',10001,10000);
insert into FACTURAENTITY (id,costo,name,TARJETADECREDITO_ID,PAQUETETURISTICO_ID) values (10001,900000,'b',10001,10000);
insert into FACTURAENTITY (id,costo,name,TARJETADECREDITO_ID,PAQUETETURISTICO_ID) values (10002,1000000,'c',10001,10000);

insert into PAGOENTITY (id,costo, name) values (10000,20000,'Monserrate');
insert into PAGOENTITY (id,costo, name) values (10003,60000,'Sagrada familia');
insert into PAGOENTITY (id,costo, name) values (10005,20000,'Monserrate');

insert into PLANAGENDADOENTITY (id,fecha,name,plan_id) values (10000,'2014-07-02 06:14:00','f',10000);
insert into PLANAGENDADOENTITY (id,fecha,name,plan_id) values (10020,'2010-06-22 04:30:00','a',10001);
insert into PLANAGENDADOENTITY (id,fecha,name,plan_id) values (10030,'2011-04-16 11:50:00','s',10002);

insert into PAQUETETURISTICOENTITY_PAGOENTITY (paqueteturisticoentity_id, pagos_id) values (10000,10000);
insert into PAQUETETURISTICOENTITY_PAGOENTITY (paqueteturisticoentity_id, pagos_id) values (10000,10003);
insert into PAQUETETURISTICOENTITY_PLANAGENDADOENTITY (paqueteturisticoentity_id, planes_id) values (10000,10000);
insert into PAQUETETURISTICOENTITY_PLANAGENDADOENTITY (paqueteturisticoentity_id, planes_id) values (10000,10020);

insert into USUARIOENTITY_FACTURAENTITY(USUARIOENTITY_ID,LISTAFACTURAS_ID) values (10001,10000);
insert into USUARIOENTITY_FACTURAENTITY(USUARIOENTITY_ID,LISTAFACTURAS_ID) values (10001,10001);
insert into USUARIOENTITY_FACTURAENTITY(USUARIOENTITY_ID,LISTAFACTURAS_ID) values (10001,10002);