-- 1. Check out one row

SELECT n.A_STRONGLY_AGREE FROM nss AS n WHERE question='Q01' AND institution='Edinburgh Napier University' AND subject='(8) Computer Science';

-- 2. Calculate how many agree or strongly agree

SELECT n.institution,n.subject FROM nss AS n WHERE question='Q15' AND n.score >= 100;

-- 3. Unhappy Computer Students

SELECT n.institution,n.score FROM nss AS n WHERE n.question='Q15' AND subject='(8) Computer Science' AND n.score <50;

-- 4. More Computing or Creative Students?

SELECT n.subject,SUM(n.response) FROM nss AS n WHERE n.question='Q22' AND n.subject IN ('(8) Computer Science','(H) Creative Arts and Design') GROUP BY n.subject;

-- 5. Strongly Agree Numbers

SELECT n.subject, (SUM(response * A_STRONGLY_AGREE)/100) FROM nss AS n WHERE n.question = 'Q22' AND n.subject IN ('(8) Computer Science','(H) Creative Arts and Design') GROUP BY n.subject;

-- 6. Strongly Agree, Percentage

SELECT n.subject,ROUND((SUM(response*A_STRONGLY_AGREE)/100) / sum(response) *100) FROM nss AS n WHERE n.subject IN ('(8) Computer Science','(H) Creative Arts and Design') AND n.question = 'Q22' GROUP BY n.subject;

-- 7. Scores for Institutions in Manchester

SELECT n.institution,ROUND(SUM(n.score * n.response) / SUM(n.response)) AS avg_score FROM nss AS n WHERE n.question='Q22' AND (n.institution LIKE '%Manchester%')
GROUP BY n.institution;

-- 8. Number of Computing Students in Manchester

SELECT n.institution, SUM(n.sample) AS total_sample, SUM(CASE WHEN n.subject = '(8) Computer Science' THEN n.sample END) AS comp FROM nss AS n WHERE n.question = 'Q01' AND n.institution LIKE '%Manchester%' GROUP BY n.institution;
