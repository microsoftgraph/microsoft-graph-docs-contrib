---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	IsGroupOwnerManagementEnabled = $true
}

Update-MgPolicyAccessReviewPolicy -BodyParameter $params

```