---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"Template@odata.bind" = "https://graph.microsoft.com/v1.0/teamsTemplates('standard')"
	Visibility = "Private"
	DisplayName = "Sample Engineering Team"
	Description = "This is a sample engineering team, used to showcase the range of properties supported by this API"
	Channels = @(
		@{
			DisplayName = "Announcements 📢"
			IsFavoriteByDefault = $true
			Description = "This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements."
		}
		@{
			DisplayName = "Training 🏋️"
			IsFavoriteByDefault = $true
			Description = "This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs."
			Tabs = @(
				@{
					"TeamsApp@odata.bind" = "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.web')"
					DisplayName = "A Pinned Website"
					Configuration = @{
						ContentUrl = "https://learn.microsoft.com/microsoftteams/microsoft-teams"
					}
				}
				@{
					"TeamsApp@odata.bind" = "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.youtube')"
					DisplayName = "A Pinned YouTube Video"
					Configuration = @{
						ContentUrl = "https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=X8krAMdGvCQ"
						WebsiteUrl = "https://www.youtube.com/watch?v=X8krAMdGvCQ"
					}
				}
			)
		}
		@{
			DisplayName = "Planning 📅 "
			Description = "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu."
			IsFavoriteByDefault = $false
		}
		@{
			DisplayName = "Issues and Feedback 🐞"
			Description = "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu."
		}
	)
	MemberSettings = @{
		AllowCreateUpdateChannels = $true
		AllowDeleteChannels = $true
		AllowAddRemoveApps = $true
		AllowCreateUpdateRemoveTabs = $true
		AllowCreateUpdateRemoveConnectors = $true
	}
	GuestSettings = @{
		AllowCreateUpdateChannels = $false
		AllowDeleteChannels = $false
	}
	FunSettings = @{
		AllowGiphy = $true
		GiphyContentRating = "Moderate"
		AllowStickersAndMemes = $true
		AllowCustomMemes = $true
	}
	MessagingSettings = @{
		AllowUserEditMessages = $true
		AllowUserDeleteMessages = $true
		AllowOwnerDeleteMessages = $true
		AllowTeamMentions = $true
		AllowChannelMentions = $true
	}
	InstalledApps = @(
		@{
			"TeamsApp@odata.bind" = "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.vsts')"
		}
		@{
			"TeamsApp@odata.bind" = "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('1542629c-01b3-4a6d-8f76-1938b779e48d')"
		}
	)
}

New-MgTeam -BodyParameter $params

```