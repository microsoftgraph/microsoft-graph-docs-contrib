---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"Template@odata.bind" = "https://graph.microsoft.com/beta/teamsTemplates('standard')"
	"Group@odata.bind" = "https://graph.microsoft.com/beta/groups('dbd8de4f-5d47-48da-87f1-594bed003375')"
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