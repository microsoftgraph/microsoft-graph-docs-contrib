---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	displayName = "My tag API"
	description = "Use Graph API to create tags"
	childSelectability = "Many"
	"parent@odata.bind" = ""
}

New-MgBetaSecurityCaseEdiscoveryCaseTag -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```