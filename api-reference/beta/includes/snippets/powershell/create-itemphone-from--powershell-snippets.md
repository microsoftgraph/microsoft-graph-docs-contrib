---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	displayName = "Car Phone"
	number = "+7 499 342 22 13"
}

# A UPN can also be used as -UserId.
New-MgBetaUserProfilePhone -UserId $userId -BodyParameter $params

```