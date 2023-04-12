---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	additionalInformation = "additionalInformation-after-update"
	confidence = 42
	description = "description-after-update"
}

Update-MgSecurityTiIndicator -TiIndicatorId $tiIndicatorId -BodyParameter $params

```