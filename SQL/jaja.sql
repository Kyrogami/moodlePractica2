/*consultas por mno hacer eld iseño bien jaja*/


/*notas*/
    DELETE 
    FROM notas 
    WHERE id_curso IN (SELECT id 
                      FROM cursos 
                      WHERE id_a1 IN (SELECT id 
                                      FROM asignaturas 
                                      WHERE id_profesor1 IN (SELECT id 
                                                             FROM usuarios 
                                                             WHERE nombre = LIKE'Jorge';)))
 /*cursos*/
    DELETE 
    FROM cursos 
    WHERE id_a1 IN (SELECT id 
                    FROM asignaturas 
                    WHERE id_profesor1 IN (SELECT id 
                                           FROM usuarios 
                                           WHERE nombre LIKE 'Jorge'));
/* asignatuars */
    DELETE 
    FROM asignaturas 
    WHERE id_profesor1 IN (SELECT id 
                           FROM usuarios 
                           WHERE nombre LIKE 'Jorge')

