---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	inboundAccess = @{
		isAllowed = $false
	}
}

Update-MgBetaPolicyCrossTenantAccessPolicyDefaultM365Capability -M365CapabilityBaseName $m365CapabilityBaseName -BodyParameter $params

```