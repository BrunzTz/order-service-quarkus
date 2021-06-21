--SCRIPT GERADO PELO QUARKUS

CREATE TABLE public.convenio (
	id int8 NOT NULL,
	descricao varchar(255) NULL,
	CONSTRAINT convenio_pkey PRIMARY KEY (id)
);

CREATE TABLE public.medico (
	id int8 NOT NULL,
	especialidade varchar(255) NULL,
	nome varchar(255) NULL,
	CONSTRAINT medico_pkey PRIMARY KEY (id)
);

CREATE TABLE public.paciente (
	id int8 NOT NULL,
	data_nascimento date NULL,
	endereco varchar(255) NULL,
	nome varchar(255) NULL,
	sexo varchar(255) NULL,
	CONSTRAINT paciente_pkey PRIMARY KEY (id)
);

CREATE TABLE public.postocoleta (
	id int8 NOT NULL,
	descricao varchar(255) NULL,
	endereco varchar(255) NULL,
	CONSTRAINT postocoleta_pkey PRIMARY KEY (id)
);

CREATE TABLE public.exame (
	id int8 NOT NULL,
	descricao varchar(255) NULL,
	preco float8 NULL,
	CONSTRAINT exame_pkey PRIMARY KEY (id)
);

CREATE TABLE public.orderservice (
	id int8 NOT NULL,
	"date" date NULL,
	convenio_id int8 NULL,
	medico_id int8 NULL,
	paciente_id int8 NULL,
	posto_coleta_id int8 NULL,
	CONSTRAINT orderservice_pkey PRIMARY KEY (id),
	CONSTRAINT fkhxk8o68pa9njl9hyhl8xs2o04 FOREIGN KEY (posto_coleta_id) REFERENCES postocoleta(id),
	CONSTRAINT fkkytcrlmbq8m18jv5rd7duy8o2 FOREIGN KEY (paciente_id) REFERENCES paciente(id),
	CONSTRAINT fknfg0c4jaolqmw3jbsvbnuyas8 FOREIGN KEY (medico_id) REFERENCES medico(id),
	CONSTRAINT fkt38h4basjxr8wvhbgj54wp2il FOREIGN KEY (convenio_id) REFERENCES convenio(id)
);

CREATE TABLE public.orderserviceexame (
	id int8 NOT NULL,
	preco float8 NULL,
	exame_id int8 NULL,
	order_service_id int8 NULL,
	CONSTRAINT orderserviceexame_pkey PRIMARY KEY (id),
	CONSTRAINT fkqx2rqhcqy78uj6ekjaruecxfi FOREIGN KEY (order_service_id) REFERENCES orderservice(id),
	CONSTRAINT fkrvxtjiohtdshv9pww7sxa61fe FOREIGN KEY (exame_id) REFERENCES exame(id)
);

INSERT INTO public.convenio (id,descricao) VALUES 
(1,'Unimed')
,(2,'Cassi')
,(3,'Bradesco Saúde')
,(4,'HB Saúde')
;

INSERT INTO public.medico (id,especialidade,nome) VALUES 
(1,'Ordontologista','Pedro Silva')
,(2,'Clínico Geral','Cleber Mauri')
,(3,'Dermatologista','Tiago Mendes')
,(4,'Nutricionista','Jessica Ribeiro')
;

INSERT INTO public.exame (id,descricao,preco) VALUES 
(1,'Colesterol',100.24)
,(2,'Hemograma',53.33)
,(3,'Tireóide',200)
,(4,'Diabete',150)
;

INSERT INTO public.paciente (id,data_nascimento,endereco,nome,sexo) VALUES 
(1,'1999-01-01','Av Santos Dumont','Igor Perreira','Masculino')
,(2,'1998-05-26','Rua Albatronz','Leandro Barbosa','Masculino')
,(3,'1984-12-12','Rua Oscar Freitas','Laise Meira','Feminino')
,(4,'2000-08-14','Rua Guarulhos','Giovana Fernades','Feminino')
;

INSERT INTO public.postocoleta (id,descricao,endereco) VALUES 
(1,'São Francisco','Rua Botônica')
,(2,'Osvaldo Cruz','Av Mendes de Sá')
,(3,'Collab','Rua Maranhã')
,(4,'Marcos Lab','Rua Paraná')
;

INSERT INTO public.orderservice (id,"date",convenio_id,medico_id,paciente_id,posto_coleta_id) VALUES 
(1,'2021-03-03',1,4,2,3)
,(2,'2021-06-11',2,3,3,1)
,(3,'2021-06-20',3,2,1,4)
,(4,'2021-05-13',4,1,4,2)
;

INSERT INTO public.orderserviceexame (id,preco,exame_id,order_service_id) VALUES 
(1,400,3,1)
,(2,515.78,2,2)
,(3,639.67,4,4)
,(4,234.99,1,2)
;