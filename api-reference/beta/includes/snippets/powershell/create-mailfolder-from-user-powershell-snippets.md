---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	DisplayName = "Clutter"
	IsHidden = $true
}

New-MgUserMailFolder -UserId $userId -BodyParameter $params

```