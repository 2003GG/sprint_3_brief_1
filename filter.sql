USE 
SELECT *
FROM members m
    INNER JOIN abonnement a ON m.id = a.member_id
WHERE
    a.type_abon = 'annuellement';