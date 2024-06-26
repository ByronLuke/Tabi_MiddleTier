USE [Tabi]
GO
/****** Object:  StoredProcedure [dbo].[EventTypes_SelectAll]    Script Date: 4/15/2024 12:38:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =======================================================
-- Author: Byron Praetor
-- Create Date: 04/11/2024
-- Description: A select procedure for all the Event Types
-- Code Reviewer: Victor Martinez
-- =======================================================

CREATE proc [dbo].[EventTypes_SelectAll]

as

/*

Execute [dbo].[EventTypes_SelectAll]

*/

Begin

SELECT [Id]
      ,[Name]
  FROM [dbo].[EventTypes]

End

GO
