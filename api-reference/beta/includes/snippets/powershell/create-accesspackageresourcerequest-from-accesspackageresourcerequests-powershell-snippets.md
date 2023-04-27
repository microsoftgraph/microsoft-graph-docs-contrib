---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	catalogId = "26ac0c0a-08bc-4a7b-a313-839f58044ba5"
	requestType = "AdminAdd"
	justification = ""
	accessPackageResource = @{
		displayName = "Sales"
		description = "https://contoso.sharepoint.com/sites/Sales"
		url = "https://contoso.sharepoint.com/sites/Sales"
		resourceType = "SharePoint Online Site"
		originId = "https://contoso.sharepoint.com/sites/Sales"
		originSystem = "SharePointOnline"
	}
}

New-MgEntitlementManagementAccessPackageResourceRequest -BodyParameter $params

```