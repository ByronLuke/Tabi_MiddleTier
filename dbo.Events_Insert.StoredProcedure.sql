USE [Tabi]
GO
/****** Object:  StoredProcedure [dbo].[Events_Insert]    Script Date: 4/15/2024 12:38:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================================================
-- Author: Byron Praetor
-- Create Date: 04/11/2024
-- Description: A insert procedure to create an Event.
-- Code Reviewer: Victor Martinez
-- =========================================================================================

CREATE proc [dbo].[Events_Insert]

@Id int OUTPUT
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
,@CreatedBy int
,@ModifiedBy int

as
    
/*
Declare @Id int = 1
		,@EventTypeId int = 2
		,@Name nvarchar(255) = 'The Beatles Tribute'
		,@Summary nvarchar(255) = 'A Tribute show with surprise acts'
		,@ShortDescription nvarchar(4000) = 'A walk down memeory lane with one of the most iconic bands in human history'
		,@VenueId int = 1
		,@EventStatusId int = 1
		,@ImageId int = 6
		,@ExternalSiteUrl nvarchar(400) = 'thebest.com'
		,@isFree bit = 0
		,@DateStart datetime2(7) = '2024-05-05'
		,@DateEnd datetime2(7) = '2024-05-05'
		,@CreatedBy int = 1
		,@ModifiedBy int = 1

Execute dbo.Events_Insert @Id OUTPUT
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
						   ,@CreatedBy 
						   ,@ModifiedBy

*/

begin

INSERT INTO [dbo].[Events]
           ([EventTypeId]
           ,[Name]
           ,[Summary]
           ,[ShortDescription]
           ,[VenueId]
           ,[EventStatusId]
           ,[ImageId]
           ,[ExternalSiteUrl]
           ,[isFree]
           ,[DateStart]
           ,[DateEnd]
           ,[CreatedBy]
           ,[ModifiedBy])
     VALUES
           (@EventTypeId 
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
           ,@CreatedBy 
           ,@ModifiedBy )
		   SET @Id = SCOPE_IDENTITY()

end

GO
