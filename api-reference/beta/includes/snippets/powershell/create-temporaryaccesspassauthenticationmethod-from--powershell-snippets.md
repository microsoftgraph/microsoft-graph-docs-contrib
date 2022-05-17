---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.temporaryAccessPassAuthenticationMethod"
	StartDateTime = [System.DateTime]::Parse("2021-01-26T00:00:00.000Z")
	LifetimeInMinutes = 60
	IsUsableOnce = $false
}

New-MgUserAuthenticationTemporaryAccessPassMethod -UserId $userId -BodyParameter $params

```