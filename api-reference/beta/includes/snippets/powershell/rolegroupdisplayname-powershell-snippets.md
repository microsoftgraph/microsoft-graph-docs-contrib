---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	recipientType = "roleGroup"
	displayName = "Security Administrator"
}

New-MgBetaSecurityCaseEdiscoveryCaseMember -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```