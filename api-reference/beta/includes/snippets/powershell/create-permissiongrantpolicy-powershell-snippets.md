---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	id = "my-custom-consent-policy"
	displayName = "Custom application consent policy"
	description = "A custom permission grant policy to customize conditions for granting consent."
}

New-MgBetaPolicyPermissionGrantPolicy -BodyParameter $params

```