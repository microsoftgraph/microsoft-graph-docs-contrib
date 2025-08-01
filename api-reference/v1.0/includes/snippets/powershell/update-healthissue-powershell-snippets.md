---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	status = "closed"
}

Update-MgSecurityIdentityHealthIssue -HealthIssueId $healthIssueId -BodyParameter $params

```