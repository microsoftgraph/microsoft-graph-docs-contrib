---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	status = "closed"
}

Update-MgBetaSecurityIdentityHealthIssue -HealthIssueId $healthIssueId -BodyParameter $params

```