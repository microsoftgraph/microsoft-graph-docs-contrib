---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	recipientType = "user"
	id = "c4af6f9d-37f6-43f9-9e17-601544234146"
}

New-MgBetaSecurityCaseEdiscoveryCaseMember -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```