---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

$params = @{
	identity = @{
		id = "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b"
		tenantId = "77229959-e479-4a73-b6e0-ddac27be315c"
	}
	email = "kenneth.brown@contoso.com"
}

New-MgBetaVirtualEventTownhallPresenter -VirtualEventTownhallId $virtualEventTownhallId -BodyParameter $params

```