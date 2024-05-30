---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	isEnabled = $false
}

Update-MgBetaPolicyAppManagementPolicy -AppManagementPolicyId $appManagementPolicyId -BodyParameter $params

```