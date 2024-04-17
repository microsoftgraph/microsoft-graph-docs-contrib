---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.departmentTemplate"
	displayName = "Finance"
}

New-MgSecurityLabelDepartment -BodyParameter $params

```