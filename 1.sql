create database Cricket;
create database Airport;

use Cricket;
create table Cricket(
 team_id int,
 teams_Captain VARCHAR(20),
 teams_name varchar(20),
 team_members int);
use Airport;
create table Airport(
 Airport_id int,
 Airport_name varchar(20),
 NO_Flights int,
 Airport_members int);
 use Cricket;
 ALTER TABLE cricket
RENAME COLUMN teams to  teams_Captain ;
ALTER TABLE cricket
modify COLUMN teams_Captain varchar(20);
 INSERT INTO Cricket (team_id, teams_Captain, teams_name, team_members) VALUES
(1, 'Rohit Sharma', 'India', 11),
(2, 'Pat Cummins', 'Australia', 11),
(3, 'Ben Stokes', 'England', 11),
(4, 'Temba Bavuma', 'South Africa', 11),
(5, 'Kane Williamson', 'New Zealand', 11),
(6, 'Kraigg Brathwaite', 'West Indies', 11),
(7, 'Babar Azam', 'Pakistan', 11),
(8, 'Shakib Al Hasan', 'Bangladesh', 11),
(9, 'Dasun Shanaka', 'Sri Lanka', 11),
(10, 'Mohammad Nabi', 'Afghanistan', 11),
(11, 'Andrew Balbirnie', 'Ireland', 11),
(12, 'Craig Ervine', 'Zimbabwe', 11),
(13, 'Pieter Seelaar', 'Netherlands', 11),
(14, 'Sandeep Lamichhane', 'Nepal', 11),
(15, 'Zeeshan Maqsood', 'Oman', 11),
(16, 'Gerhard Erasmus', 'Namibia', 11),
(17, 'Richie Berrington', 'Scotland', 11),
(18, 'Nizakat Khan', 'Hong Kong', 11),
(19, 'Assad Vala', 'Papua New Guinea', 11),
(20, 'Dion Stovell', 'Bermuda', 11);
use Airport;
INSERT INTO Airport (Airport_id, Airport_name, NO_Flights, Airport_members) VALUES
(1, 'Hartsfield-Jackson Atlanta International Airport', 2700, 15000),
(2, 'Beijing Capital International Airport', 1800, 12000),
(3, 'Los Angeles International Airport', 2000, 14000),
(4, 'Dubai International Airport', 1600, 10000),
(5, 'Tokyo Haneda Airport', 1500, 11000),
(6, 'Hare International Airport', 1900, 13000),
(7, 'Heathrow Airport', 1400, 9000),
(8, 'Hong Kong International Airport', 1300, 8000),
(9, 'Shanghai Pudong International Airport', 1200, 7500),
(10, 'Roissy-Charles de Gaulle Airport', 1100, 7000),
(11, 'Amsterdam Airport Schiphol', 1000, 6500),
(12, 'Indira Gandhi International Airport', 900, 6000),
(13, 'Soekarno–Hatta International Airport', 850, 5500),
(14, 'Incheon International Airport', 800, 5000),
(15, 'Madrid-Barajas Airport', 750, 4500),
(16, 'Hamad International Airport', 700, 4000),
(17, 'Kingsford Smith Airport', 650, 3500),
(18, 'Frankfurt Airport', 600, 3000),
(19, 'Singapore Changi Airport', 550, 2500),
(20, 'Domodedovo International Airport', 500, 2000);

 ALTER TABLE airport
modify COLUMN Airport_name varchar(50);
select * from airport;
use cricket;
select * from cricket;
