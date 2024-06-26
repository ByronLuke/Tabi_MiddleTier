USE [Tabi]
GO
/****** Object:  StoredProcedure [dbo].[Events_SelectByCreatedBy_Paginated]    Script Date: 4/15/2024 12:38:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================================================
-- Author: Byron Praetor
-- Create Date: 04/11/2024
-- Description: A select procedure to select Events by Created By in a paginated way.
--				Additionally implements inner joins of EventTypes table, Venues Table, 
--				Files Table, and Event Status Table.
-- Code Reviewer: Victor Martinez
-- =========================================================================================

CREATE proc [dbo].[Events_SelectByCreatedBy_Paginated]

@PageIndex int,
@PageSize int,
@CreatedBy int
as

/*

Execute dbo.Events_SelectByCreatedBy_Paginated @PageIndex=0, @PageSize= 10, @CreatedBy = 1

*/

begin

Declare @offset int = @PageIndex * @PageSize

SELECT e.[Id]
      ,e.[Name]
      ,e.[Summary]
      ,e.[ShortDescription]
	  ,f.[Url] as ImageUrl
      ,e.[ExternalSiteUrl]
      ,e.[isFree]    
	  ,et.[Id]
	  ,et.[Name]
	  ,es.[Id]
	  ,es.[Name]
	  ,v.[Id] as VenueId
	  ,v.[Name] as VenueName
      ,e.[DateCreated]
      ,e.[DateModified]
      ,e.[DateStart]         
      ,e.[DateEnd]            
      ,dbo.fn_GetUserJSON(e.Createdby) as CreatedBy
	  ,dbo.fn_GetUserJSON(e.ModifiedBy) as ModifiedBy    
	  		, TotalCount = COUNT(1) OVER()
  FROM [dbo].[Events] e
  join dbo.EventTypes et on et.Id = e.EventTypeId
  join dbo.EventStatus es on es.Id = e.EventTypeId
  join dbo.Venues v on v.Id = e.VenueId
  join dbo.files f on f.id = e.imageId
  where e.CreatedBy = @CreatedBy
  order by e.Id
  OFFSET @offset Rows
  Fetch Next @PageSize Rows ONLY

end

GO
