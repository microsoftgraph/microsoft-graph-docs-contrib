---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	IsOptional = $false
	RequiresVerification = $false
	UserInputType = "TextBox"
	DisplayName = "Shoe size"
	UserAttributeValues = @(
	)
	UserAttribute = @{
		Id = "extension_guid_shoeSize"
	}
}

New-MgIdentityB2CUserFlowUserAttributeAssignment -B2cIdentityUserFlowId $b2cIdentityUserFlowId -BodyParameter $params

```