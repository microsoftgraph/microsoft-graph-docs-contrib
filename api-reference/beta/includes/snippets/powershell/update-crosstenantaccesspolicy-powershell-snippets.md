---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	allowedCloudEndpoints = @(
		"microsoftonline.us"
		"partner.microsoftonline.cn"
	)
}

Update-MgPolicyCrossTenantAccessPolicy -BodyParameter $params

```