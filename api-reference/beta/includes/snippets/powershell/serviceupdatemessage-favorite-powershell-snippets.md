---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Devices.ServiceAnnouncement

$params = @{
	messageIds = @(
		"MC172851"
		"MC167983"
	)
}

Invoke-MgBetaFavoriteServiceAnnouncementMessage -BodyParameter $params

```