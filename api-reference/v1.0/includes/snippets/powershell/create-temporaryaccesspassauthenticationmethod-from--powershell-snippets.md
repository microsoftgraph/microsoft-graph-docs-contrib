---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	StartDateTime = [System.DateTime]::Parse("2022-06-05T00:00:00.000Z")
	LifetimeInMinutes = 60
	IsUsableOnce = $false
}

New-MgUserAuthenticationTemporaryAccessPassMethod -UserId $userId -BodyParameter $params

```