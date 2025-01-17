---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	displayName = "My legalHold with sources"
	description = "Created from Graph API"
	contentQuery = "KQL content query"
}

New-MgBetaSecurityCaseEdiscoveryCaseLegalHold -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```