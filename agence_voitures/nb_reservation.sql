CREATE OR REPLACE FUNCTION nb_reservation (p_clt_id IN INTEGER) 
RETURN INTEGER 
IS
    v_nb_res INTEGER;
BEGIN
    SELECT COUNT(*) 
    INTO v_nb_res
    FROM Réserver
    WHERE clt_id = p_clt_id;

    RETURN v_nb_res;
END;
