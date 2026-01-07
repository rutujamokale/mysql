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

select title,a,b,c,d ,answerkey,created_by from questionbank
where created_by="Ravi Tambade";

select qb.title,qb.a,qb.b,qb.c,qb.d,qb.answerkey
from questionbank qb
join subject_concepts sc on sc.subject_concept_id=qb.subject_concept_id
join subjects s on  sc.subject_id=s.id
where s.title="Dotnet" and
created_by="Sanika Bhor";



select qb.title,qb.a,qb.b,qb.c,qb.d,qb.answerkey
from questionbank qb
join subject_concepts sc on sc.subjectc_concept_id=qb.subject_concept_id
join subjects s on  sc.subject_id=s.id
join concepts c on sc.subject_concept_id=c.id
where s.title="Dotnet" and
created_by="Sanika Bhor"
and c.id=1





