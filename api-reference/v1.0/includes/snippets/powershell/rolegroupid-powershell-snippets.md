---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	recipientType = "roleGroup"
	id = "b9fb4f22-5f90-47a0-b309-44fe96a959fd"
}

New-MgSecurityCaseEdiscoveryCaseMember -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```