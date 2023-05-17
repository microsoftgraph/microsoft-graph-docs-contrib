---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	isOptional = $false
	requiresVerification = $false
	userInputType = "TextBox"
	displayName = "Shoe size"
	userAttributeValues = @(
	)
	userAttribute = @{
		id = "extension_guid_shoeSize"
	}
}

New-MgIdentityB2CUserFlowUserAttributeAssignment -B2cIdentityUserFlowId $b2cIdentityUserFlowId -BodyParameter $params

```