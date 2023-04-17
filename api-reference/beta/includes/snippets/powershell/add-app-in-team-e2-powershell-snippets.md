---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"teamsApp@odata.bind" = "https://graph.microsoft.com/beta/appCatalogs/teamsApps/7023576d-9e40-47ca-9cf2-daae6838e785"
	consentedPermissionSet = @{
		resourceSpecificPermissions = @(
			@{
				permissionValue = "OnlineMeeting.ReadBasic.Chat"
				permissionType = "delegated"
			}
			@{
				permissionValue = "ChatMessage.Read.Chat"
				permissionType = "application"
			}
		)
	}
}

New-MgTeamInstalledApp -TeamId $teamId -BodyParameter $params

```