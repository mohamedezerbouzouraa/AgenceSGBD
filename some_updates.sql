CREATE OR REPLACE PROCEDURE Actualiser (
    p_pourcentage IN NUMBER, 
    p_nomstation  IN VARCHAR2
) IS
BEGIN
    UPDATE Station 
    SET tarif = tarif * (1 + p_pourcentage / 100)
    WHERE nomstation = p_nomstation;
    UPDATE Activité 
    SET prix = prix * (1 + p_pourcentage / 100)
    WHERE nomstation = p_nomstation;
END;
