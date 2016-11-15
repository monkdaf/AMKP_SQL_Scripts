-- create view "v_GasCollectionData" for view data from web
CREATE VIEW v_GasCollectionData AS
SELECT sr.ActualStartTime as dtStart, sr.ActualEndTime as dtEnd, ma.Quantity as FE, map.Quantity as TE, mape.Quantity AS PE, mapq.Quantity as QE, sr.SegmentState as type,  e.ID as ID , e.Description
FROM SegmentResponse sr,EquipmentActual ea, Equipment e, MaterialActual ma
LEFT OUTER JOIN MaterialActualProperty map ON (ma.ID=map.MaterialActual AND map.Description='TE')
LEFT OUTER JOIN MaterialActualProperty mape ON (ma.ID=mape.MaterialActual AND mape.Description='PE') 
LEFT OUTER JOIN MaterialActualProperty mapq ON (ma.ID=mapq.MaterialActual AND mapq.Description='QE')
WHERE ma.SegmentResponseID=sr.ID AND ea.SegmentResponseID=sr.id AND ea.EquipmentID=e.ID