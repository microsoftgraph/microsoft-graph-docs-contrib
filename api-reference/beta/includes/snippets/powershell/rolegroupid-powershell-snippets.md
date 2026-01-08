---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	recipientType = "roleGroup"
	id = "b9fb4f22-5f90-47a0-b309-44fe96a959fd"
}

New-MgBetaSecurityCaseEdiscoveryCaseMember -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```