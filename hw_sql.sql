SELECT s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id 
GROUP BY s.id 
ORDER BY avg_grade DESC 
LIMIT 5;

SELECT sbj.name, s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id 
LEFT JOIN subjects sbj ON sbj.id = g.subject_id 
WHERE sbj.id = 3
GROUP BY s.id 
ORDER BY avg_grade DESC 
LIMIT 1;

SELECT g2.name as group_name, sbj.name,  ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id 
LEFT JOIN subjects sbj ON sbj.id = g.subject_id 
LEFT JOIN groups g2 ON s.group_id = g2.id 
WHERE sbj.id = 3
GROUP BY group_name
ORDER BY avg_grade DESC;

SELECT sbj.name,  ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g 
LEFT JOIN subjects sbj ON sbj.id = g.subject_id 
GROUP BY sbj.name
ORDER BY avg_grade DESC;

SELECT s.name
FROM subjects s
LEFT JOIN teachers t ON t.id = s.teacher_id
WHERE t.id = 3;

SELECT s.fullname
FROM students s 
LEFT JOIN groups g  ON g.id = s.group_id 
WHERE g.name = 'ФФ-11';

SELECT s.fullname, s2.name, g.grade 
FROM students s 
LEFT JOIN grades g ON g.student_id = s.id 
LEFT JOIN groups g2 ON g2.id = s.group_id 
LEFT JOIN subjects s2 ON s2.id = g.subject_id 
WHERE g2.name = 'ФФ-11'
AND s2.name = 'WEB програмування';

SELECT s.name,  ROUND(AVG(grade)) as avg_grade 
FROM teachers t 
LEFT JOIN subjects s ON s.teacher_id = t.id 
LEFT JOIN grades g ON g.subject_id = s.id
WHERE t.id = 3
GROUP BY s.name;

SELECT s2.name 
FROM students s 
LEFT JOIN grades g ON s.id = g.student_id 
LEFT JOIN subjects s2 ON s2.id = g.subject_id 
WHERE s.id = 3;

SELECT s2.name 
FROM students s 
LEFT JOIN grades g ON s.id = g.student_id 
LEFT JOIN subjects s2 ON s2.id = g.subject_id 
LEFT JOIN teachers t ON t.id = s2.teacher_id 
WHERE s.id = 3
AND t.id = 3;

SELECT ROUND(AVG(grade)) as avg_grade 
FROM  grades g
LEFT JOIN subjects s ON s.id = g.subject_id 
LEFT JOIN teachers t ON t.id = s.teacher_id 
LEFT JOIN students s2 ON s2.id = g.student_id 
WHERE s2.id = 9
AND t.id = 3;

SELECT s.fullname, s2.name, g.grade
FROM (SELECT student_id, subject_id, grade 
FROM grades
WHERE date_of = '2023-05-10') as g 
LEFT JOIN students s ON s.id = g.student_id 
LEFT JOIN groups g2 ON g2.id = s.group_id 
LEFT JOIN subjects s2 ON s2.id = g.subject_id
WHERE g2.id = 3
AND s2.id = 1;





