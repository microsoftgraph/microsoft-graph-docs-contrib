---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	email = "AdeleV@contoso.com"
}

New-MgBetaSecurityCaseEdiscoveryCaseCustodian -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```