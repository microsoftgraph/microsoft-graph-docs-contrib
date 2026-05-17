---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	displayName = "My tag API"
	description = "Use Graph API to create tags"
	childSelectability = "Many"
	"parent@odata.bind" = "https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/{ediscoveryCaseID}/tags/{parentTagID}"
}

New-MgSecurityCaseEdiscoveryCaseTag -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```