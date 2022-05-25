CREATE TABLE TB_AUTOMOVEL (
    placa VARCHAR(7),
    marca VARCHAR(20),
    modelo VARCHAR(20),
    cor VARCHAR(15),
    preco_tabela number(8,2),
    ano_modelo NUMBER(4)
);

ALTER TABLE TB_AUTOMOVEL
    ADD CONSTRAINT PK_TB_AUTOMOVEL_PLACA PRIMARY KEY (placa);
    
INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('EDG3K22', 'Vw', 'Fusca', 'Azul', 60000, 2020);
INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('JJC2C22', 'Ford', 'Fiesta', 'Prata', 18000, 1999);
INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('AJB4J21', 'Chevrolet', 'Corsa', 'Vermelho', 7500, 1998);
INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('QQQ8Y00', 'Fiat', 'Moby', 'Branco', 66000, 2022);
INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('WWW7W77', 'Vw', 'Jetta tsi', 'Prata', 90000, 2018);
INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('DDD9B43', 'Ford', 'Mustang', 'Preto', 150000, 2019);
INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('ZAQ9K88', 'Chevrolet', 'Traker', 'Verde', 178000, 2018);
INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('KKK6N00', 'Fiat', 'Punto', 'Amarelo', 45600, 2000);

-- Exercicio 1

SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
    INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('HWW8633', 'Chevrolet', 'Meriva', 'Prata', 15000, 2007);
    INSERT  INTO TB_AUTOMOVEL (PLACA,MARCA,MODELO,COR,PRECO_TABELA,ANO_MODELO) VALUES ('dpm1395', 'Vw', 'Fox', 'Preto', 10000, 2005);
END;

DECLARE 
    CURSOR V_AUTOMOVEL IS SELECT * FROM TB_AUTOMOVEL;
BEGIN
    FOR VEICULO IN V_AUTOMOVEL LOOP
        dbms_output.put_line('------------------');
        dbms_output.put_line(veiculo.placa);
        dbms_output.put_line(veiculo.marca);
        dbms_output.put_line(veiculo.modelo);
        dbms_output.put_line(veiculo.cor);
        dbms_output.put_line(veiculo.preco_tabela);
        dbms_output.put_line(veiculo.ano_modelo);
        dbms_output.put_line('------------------');
    END LOOP;
END;