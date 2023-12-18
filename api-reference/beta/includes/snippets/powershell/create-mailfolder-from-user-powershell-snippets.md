---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	displayName = "Clutter"
	isHidden = $true
}

# A UPN can also be used as -UserId.
New-MgBetaUserMailFolder -UserId $userId -BodyParameter $params

```