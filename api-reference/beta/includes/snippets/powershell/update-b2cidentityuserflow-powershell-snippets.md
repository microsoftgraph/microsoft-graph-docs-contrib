---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	isLanguageCustomizationEnabled = $true
	defaultLanguageTag = "en"
}

Update-MgBetaIdentityB2CUserFlow -B2cIdentityUserFlowId $b2cIdentityUserFlowId -BodyParameter $params

```