---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	newAssignmentOrder = @{
		order = @(
			"City"
			"extension_GUID_ShoeSize"
		)
	}
}

Set-MgBetaIdentityB2CUserFlowUserAttributeAssignmentOrder -B2cIdentityUserFlowId $b2cIdentityUserFlowId -BodyParameter $params

```