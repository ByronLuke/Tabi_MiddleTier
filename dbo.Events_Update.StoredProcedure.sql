USE [Tabi]
GO
/****** Object:  StoredProcedure [dbo].[Events_Update]    Script Date: 4/15/2024 12:38:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================================================
-- Author: Byron Praetor
-- Create Date: 04/11/2024
-- Description: A update procedure to update an Events details.
-- Code Reviewer: Victor Martinez
-- =========================================================================================

CREATE proc [dbo].[Events_Update]

@Id int 
,@EventTypeId int
,@Name nvarchar(255)
,@Summary nvarchar(255)
,@ShortDescription nvarchar(4000)
,@VenueId int
,@EventStatusId int
,@ImageId int
,@ExternalSiteUrl nvarchar(400)
,@isFree bit
,@DateStart datetime2(7)
,@DateEnd datetime2(7)
,@ModifiedBy int

as
/*
Declare @Id int = 3
		,@EventTypeId int = 2
		,@Name nvarchar(255) = 'CCR Tribute'
		,@Summary nvarchar(255) = 'A Tribute show with surprise acts'
		,@ShortDescription nvarchar(4000) = 'A walk down memeory lane with one of the most iconic bands in human history'
		,@VenueId int = 1
		,@EventStatusId int = 1
		,@ImageId int = 6
		,@ExternalSiteUrl nvarchar(400) = 1
		,@isFree bit = 0
		,@DateStart datetime2(7) = '2024-05-05'
		,@DateEnd datetime2(7) = '2024-05-05'
		,@ModifiedBy int = 1

Execute dbo.Events_Update @Id 
						   ,@EventTypeId 
						   ,@Name 
						   ,@Summary 
						   ,@ShortDescription 
						   ,@VenueId 
						   ,@EventStatusId 
						   ,@ImageId 
						   ,@ExternalSiteUrl 
						   ,@isFree 
						   ,@DateStart 
						   ,@DateEnd
						   ,@ModifiedBy
*/

Begin

UPDATE [dbo].[Events]
   SET [EventTypeId] = @EventTypeId 
      ,[Name] = @Name 
      ,[Summary] = @Summary 
      ,[ShortDescription] = @ShortDescription 
      ,[VenueId] = @VenueId 
      ,[EventStatusId] = @EventStatusId 
      ,[ImageId] = @ImageId 
      ,[ExternalSiteUrl] = @ExternalSiteUrl 
      ,[isFree] = @isFree 
      ,[DateStart] = @DateStart 
      ,[DateEnd] = @DateEnd 
      ,[ModifiedBy] = @ModifiedBy 
 WHERE [Id] = @Id

End


GO
