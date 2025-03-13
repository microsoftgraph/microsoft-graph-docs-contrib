---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	webUrl = "https://github.com/innocenty.popov"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserProfileWebAccount -UserId $userId -WebAccountId $webAccountId -BodyParameter $params

```