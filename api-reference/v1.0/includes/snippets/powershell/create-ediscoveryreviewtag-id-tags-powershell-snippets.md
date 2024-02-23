---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	displayName = "My tag API"
	description = "Use Graph API to create tags"
	childSelectability = "Many"
}

New-MgSecurityCaseEdiscoveryCaseTag -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```