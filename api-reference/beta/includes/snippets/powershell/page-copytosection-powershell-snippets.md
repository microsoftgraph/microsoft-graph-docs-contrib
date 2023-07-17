---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	id = "id-value"
	groupId = "groupId-value"
}

# A UPN can also be used as -UserId.
Copy-MgBetaUserOnenotePageToSection -UserId $userId -OnenotePageId $onenotePageId -BodyParameter $params

```