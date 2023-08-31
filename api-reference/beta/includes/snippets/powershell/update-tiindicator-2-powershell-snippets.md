---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	additionalInformation = "additionalInformation-after-update"
	confidence = 42
	description = "description-after-update"
}

Update-MgBetaSecurityTiIndicator -TiIndicatorId $tiIndicatorId -BodyParameter $params

```