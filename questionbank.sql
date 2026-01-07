select questionbank.title 
from questionbank
inner join  subject_concepts as sc on sc.subject_concept_id=questionbank.subject_concept_id
inner join subjects as s on  s.id= sc.subject_id where s.id=1; 

select questionbank.title 
from questionbank
inner join  subject_concepts as sc on sc.subject_concept_id=questionbank.subject_concept_id
inner join subjects as s on  s.id= sc.subject_id where s.id=1 and questionbank.difficulty_level="Beginner";


select  qb.id,qb.title,qb.a,qb.b ,qb.c,qb.d ,qb.answerkey,qb.difficulty_level
from questionbank qb
join subject_concepts sc on sc.subject_concept_id=qb.subject_concept_id
join subjects s on s.id= sc.subject_id  and difficulty_level="beginner" and
sc.concept_id=1;

