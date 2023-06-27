---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	addLicenses = @(
	)
	removeLicenses = @(
		"f30db892-07e9-47e9-837c-80727f46fd3d"
		"84a661c4-e949-4bd2-a560-ed7766fcaf2b"
	)
}

# A UPN can also be used as -UserId.
Set-MgUserLicense -UserId $userId -BodyParameter $params

```