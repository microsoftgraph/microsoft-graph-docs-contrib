---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	disableUserAccounts = $true
}

Invoke-MgForceDomainDelete -DomainId $domainId -BodyParameter $params

```