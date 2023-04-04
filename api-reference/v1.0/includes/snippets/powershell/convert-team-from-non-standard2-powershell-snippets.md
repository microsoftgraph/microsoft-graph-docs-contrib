---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"Template@odata.bind" = "https://graph.microsoft.com/v1.0/teamsTemplates('educationClass')"
	DisplayName = "My Class Team"
	Description = "My Class Team’s Description"
	Channels = @(
		@{
			DisplayName = "Class Announcements 📢"
			IsFavoriteByDefault = $true
		}
		@{
			DisplayName = "Homework 🏋️"
			IsFavoriteByDefault = $true
		}
	)
	MemberSettings = @{
		AllowCreateUpdateChannels = $false
		AllowDeleteChannels = $false
		AllowAddRemoveApps = $false
		AllowCreateUpdateRemoveTabs = $false
		AllowCreateUpdateRemoveConnectors = $false
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