--- use DB as default one
USE [KRR-PA-ISA95_PRODUCTION]
GO
--- Data
--- Insert data to table to [SegmentResponse]
INSERT INTO [dbo].[SegmentResponse](ID, Description, SegmentState) VALUES (76, 'АСКУЭ', 2);

--- Insert data to table to [MaterialActual]
INSERT INTO [dbo].[MaterialActual](ID, MaterialDefinitionID, Quantity, SegmentResponseID, MaterialClassID) VALUES (2, 10000, 987.654, 76, 10000);

--- Insert data to table to [EquipmentActual]
INSERT INTO [dbo].[EquipmentActual](ID, EquipmentID, SegmentResponseID, EquipmentClassID) VALUES (2, 10010, 76, 10000);

--- Insert data to table to [MaterialActualProperty]
INSERT INTO [dbo].[MaterialActualProperty](Description, Quantity, MaterialActual) VALUES ('TE', 21.54, 2);
INSERT INTO [dbo].[MaterialActualProperty](Description, Quantity, MaterialActual) VALUES ('PE', 43.65, 2);
INSERT INTO [dbo].[MaterialActualProperty](Description, Quantity, MaterialActual) VALUES ('QE', 65.87, 2);

--- Update data to table to [SegmentResponse]
UPDATE [dbo].[SegmentResponse] 
SET ActualStartTime='2016-11-21 10:00', ActualEndTime='2016-11-22 10:00'
WHERE ID=76;