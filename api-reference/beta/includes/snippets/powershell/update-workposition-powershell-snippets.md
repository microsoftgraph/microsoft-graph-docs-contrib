---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	IsCurrent = $true
}

# A UPN can also be used as -UserId.
Update-MgUserProfilePosition -UserId $userId -WorkPositionId $workPositionId -BodyParameter $params

```