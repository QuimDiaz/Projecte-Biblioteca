DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;
CREATE OR REPLACE TABLE usuari(
	nom varchar(25),
	cognom varchar(30),
	dni varchar(9) PRIMARY KEY,
	correu varchar(50),
	tel int,
	code int,
	nivell char(1),
	CHECK(nivell IN ('A','C','T'))); -- A=Admin // C=Client // T=Treballador
DROP TABLE IF EXISTS usuari;
CREATE OR REPLACE TABLE llibre(
	titol varchar(100),
	autor varchar(60),
	isbn varchar(13),
	cLlibre int,
	genere varchar(10));
DROP TABLE IF EXISTS llibre;
CREATE OR REPLACE TABLE stock(
	exemplars int,
	stockDisponible int);
DROP TABLE IF EXISTS stock;
