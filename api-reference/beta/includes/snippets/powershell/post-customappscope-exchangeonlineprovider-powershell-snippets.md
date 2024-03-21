---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Enrollment

$params = @{
	type = "RecipientScope"
	displayName = "Protected Exec Users"
	customAttributes = @{
		Exclusive = $false
		RecipientFilter = "Title -like 'VP*'"
	}
}

New-MgBetaRoleManagementExchangeCustomAppScope -BodyParameter $params

```