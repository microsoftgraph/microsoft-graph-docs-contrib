---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	number = "USPTO-3954432633"
	webUrl = "https://patents.gov/3954432633"
}

Update-MgBetaUserProfilePatent -UserId $userId -ItemPatentId $itemPatentId -BodyParameter $params

```