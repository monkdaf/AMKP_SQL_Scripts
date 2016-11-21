--- use DB as default one
USE [KRR-PA-ISA95_PRODUCTION]
GO

--- Const data
--- Insert data to table to [MaterialClass]
INSERT INTO [dbo].[MaterialClass](Description, ID) VALUES ('Газы', 10000);

--- Insert data to table to [MaterialDefinition]
INSERT INTO [dbo].[MaterialDefinition](ID, Description, MaterialClassID) VALUES (10000, 'Кислород', 10000);
INSERT INTO [dbo].[MaterialDefinition](ID, Description, MaterialClassID) VALUES (10001, 'Азот', 10000);
INSERT INTO [dbo].[MaterialDefinition](ID, Description, MaterialClassID) VALUES (10002, 'Сжатый воздух', 10000);

GO

--- Data
--- Insert data to table to [SegmentResponse]
INSERT INTO [dbo].[SegmentResponse](ID, Description, SegmentState) VALUES (75, 'АСКУЭ', 1);

--- Insert data to table to [MaterialActual]
INSERT INTO [dbo].[MaterialActual](ID, MaterialDefinitionID, Quantity, SegmentResponseID, MaterialClassID) VALUES (1, 10000, 123.456, 75, 10000);

--- Insert data to table to [EquipmentActual]
INSERT INTO [dbo].[EquipmentActual](ID, EquipmentID, SegmentResponseID, EquipmentClassID) VALUES (1, 10010, 75, 10000);

--- Insert data to table to [MaterialActualProperty]
INSERT INTO [dbo].[MaterialActualProperty](Description, Quantity, MaterialActual) VALUES ('TE', 12.34, 1);
INSERT INTO [dbo].[MaterialActualProperty](Description, Quantity, MaterialActual) VALUES ('PE', 34.56, 1);
INSERT INTO [dbo].[MaterialActualProperty](Description, Quantity, MaterialActual) VALUES ('QE', 56.78, 1);


GO
