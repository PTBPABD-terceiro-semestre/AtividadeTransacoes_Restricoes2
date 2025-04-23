/*Questão 01. 
Crie um SCHEMA chamado avaliacaocontinua no seu banco de dados para armazenar os objetos criados nas próximas questões.
Após a execução de todas as instruções, os objetos serão organizados de acordo com a figura.*/

create schema avaliacaocontinua;

/*Questão 02. Crie a tabela company com os atributos company_name e city.
Utilize a restrição not null para o atributo company_name.
O atributo company_name deverá ser uma chave primária.*/

create table avaliacaocontinua.company(
  company_name varchar(40) not null,
  city varchar(28),
  primary key (company_name)
);

/*Questão 03. Crie a tabela employee com os atributos person_name, street e city.
Utilize a restrição not null para o atributo person_name.
O atributo person_name deverá ser uma chave primária.*/

create table avaliacaocontinua.employee(
  person_name varchar(40) not null,
  street varchar(40),
  city varchar(28),
  primary key (person_name)
);

/*Questão 04. Crie a tabela manages com os atributos person_name e manager_name.
Utilize a restrição not null para o atributo person_name.
O atributo person_name deverá ser uma chave primária.*/

create table avaliacaocontinua.manages(
  person_name varchar(40) not null,
  manager_name varchar(40),
  primary key (person_name)
);

/*Questão 05. Crie a tabela works com os atributos person_name, company_name e salary.
Utilize a restrição not null para o atributo person_name e company_name.
O atributo person_name deverá ser uma chave primária.*/

create table avaliacaocontinua.works(
  person_name varchar(40) not null,
  company_name varchar(40) not null,
  salary money,
  primary key (person_name)
);

/*Questão 06. Crie a integridade referencial entre a relação works e a relação employee.
O atributo person_name da relação works deverá existir na relação employee.
Utilize as ações em cascata: update e delete.*/

