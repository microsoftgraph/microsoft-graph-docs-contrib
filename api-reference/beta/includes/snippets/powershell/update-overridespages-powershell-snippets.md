---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	LocalizedStrings = @(
	)
}

Set-MgBetaIdentityB2CUserFlowLanguageOverridePageContent -B2cIdentityUserFlowId $b2cIdentityUserFlowId -UserFlowLanguageConfigurationId $userFlowLanguageConfigurationId -UserFlowLanguagePageId $userFlowLanguagePageId -BodyParameter $params

```