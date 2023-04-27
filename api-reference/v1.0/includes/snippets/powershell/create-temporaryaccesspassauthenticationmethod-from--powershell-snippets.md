---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	startDateTime = [System.DateTime]::Parse("2022-06-05T00:00:00.000Z")
	lifetimeInMinutes = 60
	isUsableOnce = $false
}

New-MgUserAuthenticationTemporaryAccessPassMethod -UserId $userId -BodyParameter $params

```