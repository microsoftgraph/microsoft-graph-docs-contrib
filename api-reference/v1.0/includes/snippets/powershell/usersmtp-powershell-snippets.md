---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	recipientType = "user"
	smtpAddress = "johnadams@microsoft.com"
}

New-MgSecurityCaseEdiscoveryCaseMember -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```