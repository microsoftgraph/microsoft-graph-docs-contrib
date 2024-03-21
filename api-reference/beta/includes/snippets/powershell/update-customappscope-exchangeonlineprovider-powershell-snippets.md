---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Enrollment

$params = @{
	customAttributes = @{
		RecipientFilter = "City -eq 'Seattle'"
	}
}

Update-MgBetaRoleManagementExchangeCustomAppScope -CustomAppScopeId $customAppScopeId -BodyParameter $params

```