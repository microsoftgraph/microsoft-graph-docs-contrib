---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	"@odata.type" = "#microsoft.graph.appRoleAssignment"
	deletedDateTime = [System.DateTime]::Parse("String (timestamp)")
	appRoleId = "Guid"
	creationTimestamp = "String (timestamp)"
	principalDisplayName = "String"
	principalId = "Guid"
	principalType = "String"
	resourceDisplayName = "String"
	resourceId = "Guid"
}

New-MgUserAppRoleAssignment -UserId $userId -BodyParameter $params

```