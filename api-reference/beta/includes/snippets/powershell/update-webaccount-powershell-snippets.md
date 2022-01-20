---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	WebUrl = "https://github.com/innocenty.popov"
}

Update-MgUserProfileWebAccount -UserId $userId -WebAccountId $webAccountId -BodyParameter $params

```