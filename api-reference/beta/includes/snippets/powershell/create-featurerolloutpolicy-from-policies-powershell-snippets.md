---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	DisplayName = "PassthroughAuthentication rollout policy"
	Description = "PassthroughAuthentication rollout policy"
	Feature = "passthroughAuthentication"
	IsEnabled = $true
	IsAppliedToOrganization = $false
}

New-MgPolicyFeatureRolloutPolicy -BodyParameter $params

```