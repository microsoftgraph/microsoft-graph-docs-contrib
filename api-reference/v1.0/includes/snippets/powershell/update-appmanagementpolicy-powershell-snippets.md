---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	isEnabled = $false
}

Update-MgPolicyAppManagementPolicy -AppManagementPolicyId $appManagementPolicyId -BodyParameter $params

```