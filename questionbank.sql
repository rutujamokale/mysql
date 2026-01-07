-- list all questions for a subject and concept --
select questionbank.title 
from questionbank
inner join  subject_concepts as sc on sc.subject_concept_id=questionbank.subject_concept_id
inner join subjects as s on  s.id= sc.subject_id where s.id=1; 


-- list all questions for  a subject with level --
select questionbank.title 
from questionbank
inner join  subject_concepts as sc on sc.subject_concept_id=questionbank.subject_concept_id
inner join subjects as s on  s.id= sc.subject_id where s.id=1 and questionbank.difficulty_level="Beginner";

-- list all questions for  a subject,concept  with level
select  qb.id,qb.title,qb.a,qb.b ,qb.c,qb.d ,qb.answerkey,qb.difficulty_level
from questionbank qb
join subject_concepts sc on sc.subject_concept_id=qb.subject_concept_id
join subjects s on s.id= sc.subject_id  and difficulty_level="beginner" and
sc.concept_id=1;

-- list all questions created by--
select title,a,b,c,d ,answerkey,created_by from questionbank
where created_by="Ravi Tambade";

-- list all questions for created by subject
select qb.title,qb.a,qb.b,qb.c,qb.d,qb.answerkey
from questionbank qb
join subject_concepts sc on sc.subject_concept_id=qb.subject_concept_id
join subjects s on  sc.subject_id=s.id
where s.title="Dotnet" and
created_by="Sanika Bhor";


-- list all questions subject,concept ,created by --
select qb.title,qb.a,qb.b,qb.c,qb.d,qb.answerkey
from questionbank qb
join subject_concepts sc on sc.subjectc_concept_id=qb.subject_concept_id
join subjects s on  sc.subject_id=s.id
join concepts c on sc.subject_concept_id=c.id
where s.title="Dotnet" and
created_by="Sanika Bhor"
and c.id=1;

-- list all questions subject.concept,create by,level --
select qb.title,qb.a,qb.b,qb.c,qb.d,qb.answerkey
from questionbank qb
join subject_concepts sc on sc.subject_concept_id=qb.subject_concept_id
join subjects s on  sc.subject_id=s.id
join concepts c on sc.subject_concept_id=c.id
where s.title="Dotnet" and
qb.created_by="Sanika Bhor"
and c.id=1
and qb.difficulty_level="beginner";

-- list all questions for level --
select qb.title ,difficulty_level
from questionbank qb
where difficulty_level="Expert";

-- list all questions for createdby and level

select qb.title ,difficulty_level,created_by
from questionbank qb
where created_by="Sanika Bhor"
and difficulty_level="advanced";

-- list all question  for concept and level --

select qb.title , difficulty_level
from questionbank qb 
join  subject_concepts sc on sc.subject_concept_id=qb.subject_concept_id
join concepts c on c.id= sc.concept_id
and difficulty_level="beginner";






