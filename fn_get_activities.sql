CREATE OR REPLACE FUNCTION Activités (p_nomstation IN VARCHAR2) 
RETURN VARCHAR2 IS
    CURSOR c_activites IS
        SELECT libellé 
        FROM Activité 
        WHERE nomstation = p_nomstation;
    
    v_liste VARCHAR2(4000) := '';
    v_premier BOOLEAN := TRUE;
BEGIN
    FOR r_act IN c_activites LOOP
        IF v_premier THEN
            v_liste := r_act.libellé;
            v_premier := FALSE;
        ELSE
            v_liste := v_liste || ', ' || r_act.libellé;
        END IF;
    END LOOP;
    IF v_liste IS NULL OR v_liste = '' THEN
        RETURN 'Aucune activité';
    END IF;

    RETURN v_liste;
END;
