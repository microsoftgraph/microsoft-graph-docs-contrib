---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	nickname = "Kesha"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserProfileName -UserId $userId -PersonNameId $personNameId -BodyParameter $params

```