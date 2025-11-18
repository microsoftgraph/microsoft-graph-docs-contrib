---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	"@odata.type" = "#microsoft.graph.appRoleAssignment"
	deletedDateTime = [System.DateTime]::Parse("String (timestamp)")
	appRoleId = "Guid"
	creationTimestamp = [System.DateTime]::Parse("String (timestamp)")
	principalDisplayName = "String"
	principalId = "Guid"
	principalType = "String"
	resourceDisplayName = "String"
	resourceId = "Guid"
}

New-MgBetaUserAppRoleAssignment -UserId $userId -BodyParameter $params

```