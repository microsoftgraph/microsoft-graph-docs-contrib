---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	consentedPermissionSet = @{
		resourceSpecificPermissions = @(
			@{
				permissionValue = "Channel.Create.Group"
				permissionType = "application"
			}
			@{
				permissionValue = "ChannelMeeting.ReadBasic.Group"
				permissionType = "delegated"
			}
		)
	}
}

Update-MgBetaTeamInstalledApp -TeamId $teamId -TeamsAppInstallationId $teamsAppInstallationId -BodyParameter $params

```