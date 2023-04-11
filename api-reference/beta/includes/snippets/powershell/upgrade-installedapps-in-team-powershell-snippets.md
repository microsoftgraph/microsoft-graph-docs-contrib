---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	ConsentedPermissionSet = @{
		ResourceSpecificPermissions = @(
			@{
				PermissionValue = "Channel.Create.Group"
				PermissionType = "application"
			}
			@{
				PermissionValue = "ChannelMeeting.ReadBasic.Group"
				PermissionType = "delegated"
			}
		)
	}
}

Update-MgTeamInstalledApp -TeamId $teamId -TeamsAppInstallationId $teamsAppInstallationId -BodyParameter $params

```