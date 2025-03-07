---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

$params = @{
	identity = @{
		"@odata.type" = "#microsoft.graph.communicationsGuestIdentity"
		displayName = "Guest Speaker"
		email = "guest.speaker@fabrikam.com"
	}
}

New-MgBetaVirtualEventTownhallPresenter -VirtualEventTownhallId $virtualEventTownhallId -BodyParameter $params

```