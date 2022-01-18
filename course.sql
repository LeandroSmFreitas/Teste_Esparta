/* Buscar os nomes de todos os alunos que frequentam alguma turma do professor 'JOAO PEDRO'. */
SELECT al.nome AS aluno
FROM aluno_turma alt
	JOIN aluno al ON (alt.aluno_id = al.id)
    JOIN turma t ON (alt.turma_id = t.id)
    JOIN professor p ON (t.professor_id = p.id)
    WHERE p.nome LIKE 'JOAO PEDRO'

/* Buscar os dias da semana que tenham aulas da disciplina 'MATEMATICA'. */
SELECT t.dia_da_semana 
  FROM turma AS t
	JOIN disciplina AS d ON (t.disciplina_id = d.id)
	WHERE t.disciplina_id = d.id AND d.nome LIKE 'MATEMATICA'

/* - Buscar todos os alunos que frequentem aulas de 'MATEMATICA' e também 'FISICA'. */

SELECT al.nome AS aluno
FROM aluno_turma alt
	JOIN aluno al ON (alt.aluno_id = al.id)
    JOIN turma t ON (alt.turma_id = t.id)
    JOIN disciplina d ON (t.disciplina_id = d.id)
    WHERE d.nome = 'MATEMATICA' AND d.nome = 'FISICA'

/* Buscar as disciplinas que não tenham nenhuma turma. */
SELECT d.nome 
  FROM disciplina d
  WHERE NOT EXISTS (SELECT t.disciplina_id from turma t WHERE d.id = t.disciplina_id)

/* Buscar as disciplinas que não tenham nenhuma turma. */
SELECT al.nome AS aluno
FROM aluno_turma alt
	JOIN aluno al ON (alt.aluno_id = al.id)
    JOIN turma t ON (alt.turma_id = t.id)
    JOIN disciplina d ON (t.disciplina_id = d.id)
    WHERE NOT d.nome = 'QUIMICA' AND d.nome = 'MATEMATICA'

