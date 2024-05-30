---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	requestType = "adminAdd"
	resource = @{
		originId = "https://microsoft.sharepoint.com/sites/Example"
		originSystem = "SharePointOnline"
	}
	catalog = @{
		id = "beedadfe-01d5-4025-910b-84abb9369997"
	}
}

New-MgEntitlementManagementResourceRequest -BodyParameter $params

```