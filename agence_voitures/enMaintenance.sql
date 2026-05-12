CREATE OR REPLACE FUNCTION enMaintenance (mat IN VARCHAR2) 
RETURN BOOLEAN 
IS
    x BOOLEAN;
BEGIN
    
    IF (mat NOT IN (SELECT matricule FROM Maintenance)) THEN 
         RETURN FALSE; --ken mch mawjouda aslan treturni false
    ELSE :
      SELECT etat_reparation INTO x
      FROM Maintenance 
      WHERE mat=matricule
      RETURN  x;
END;
