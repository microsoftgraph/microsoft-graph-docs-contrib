---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	isCurrent = $true
}

# A UPN can also be used as -UserId.
Update-MgBetaUserProfilePosition -UserId $userId -WorkPositionId $workPositionId -BodyParameter $params

```