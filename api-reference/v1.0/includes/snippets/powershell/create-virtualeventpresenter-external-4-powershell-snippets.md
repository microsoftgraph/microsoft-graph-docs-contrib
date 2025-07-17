---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	identity = @{
		"@odata.type" = "#microsoft.graph.communicationsGuestIdentity"
		displayName = "Guest Speaker"
		email = "guest.speaker@fabrikam.com"
	}
}

New-MgVirtualEventTownhallPresenter -VirtualEventTownhallId $virtualEventTownhallId -BodyParameter $params

```