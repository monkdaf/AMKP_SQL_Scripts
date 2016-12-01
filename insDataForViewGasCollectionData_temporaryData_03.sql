--- use DB as default one
USE [KRR-PA-ISA95_PRODUCTION]
GO
--- Data
--- Insert data to table to [SegmentResponse]
INSERT INTO [dbo].[SegmentResponse](ID, Description, SegmentState, ActualStartTime, ActualEndTime) VALUES (77, 'АСКУЭ', 3, '2016-10-22 10:00', '2016-11-22 10:00');

--- Insert data to table to [MaterialActual]
INSERT INTO [dbo].[MaterialActual](ID, MaterialDefinitionID, Quantity, SegmentResponseID, MaterialClassID) VALUES (3, 10000, 1888.354, 77, 10000);

--- Insert data to table to [EquipmentActual]
INSERT INTO [dbo].[EquipmentActual](ID, EquipmentID, SegmentResponseID, EquipmentClassID) VALUES (3, 10010, 77, 10000);

--- Insert data to table to [MaterialActualProperty]
INSERT INTO [dbo].[MaterialActualProperty](Description, Quantity, MaterialActual) VALUES ('TE', 18.43, 3);
INSERT INTO [dbo].[MaterialActualProperty](Description, Quantity, MaterialActual) VALUES ('PE', 143.16, 3);
INSERT INTO [dbo].[MaterialActualProperty](Description, Quantity, MaterialActual) VALUES ('QE', 88.36, 3);

--- Update data to table to [SegmentResponse]
--- UPDATE [dbo].[MaterialActualProperty] 
--- SET MaterialActual=3
--- WHERE Quantity=18.43;

--- UPDATE [dbo].[MaterialActualProperty] 
--- SET MaterialActual=3
--- WHERE Quantity=143.16;

--- UPDATE [dbo].[MaterialActualProperty] 
--- SET MaterialActual=3
--- WHERE Quantity=88.36;