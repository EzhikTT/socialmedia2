create database if not exists socialmedia;
use socialmedia;

create table if not exists news(
    `id` int(11) auto_increment not null, 
    `date` datetime not null default now(), 
    `title` varchar(64) not null, 
    `desc` varchar(256) not null, 
    `author` varchar(64) not null, 
    primary key(`id`)
); 

insert into news(`title`, `desc`, `author`) 
            values(
                'Найден первый случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден второй случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден третий случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден четвертый случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден пятый случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден шестой случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден седьмой случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден восьмой случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден девятый случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден десятый случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден одиннадцатый случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );
insert into news(`title`, `desc`, `author`) 
            values(
                'Найден двеннадцатый случай COVID19',
                'В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши',
                'Министерство здравоохранения КНР'
            );