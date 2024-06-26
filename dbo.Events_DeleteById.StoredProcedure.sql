USE [Tabi]
GO
/****** Object:  StoredProcedure [dbo].[Events_DeleteById]    Script Date: 4/15/2024 12:38:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================================================
-- Author: Byron Praetor
-- Create Date: 04/11/2024
-- Description: A delete procedure to delete an Event by Id.
-- Code Reviewer: Victor Martinez
-- =========================================================================================

CREATE proc [dbo].[Events_DeleteById]

@id int 

/*

Declare @Id int = 8
Execute [dbo].[Events_DeleteById] @Id

*/
as

begin

DELETE FROM [dbo].[Events]
      WHERE [Id] = @Id
end

GO
