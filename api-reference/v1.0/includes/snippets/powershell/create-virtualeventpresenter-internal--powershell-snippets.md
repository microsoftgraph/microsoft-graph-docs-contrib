---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	identity = @{
		"@odata.type" = "#microsoft.graph.communicationsUserIdentity"
		id = "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b"
	}
}

New-MgVirtualEventWebinarPresenter -VirtualEventWebinarId $virtualEventWebinarId -BodyParameter $params

```