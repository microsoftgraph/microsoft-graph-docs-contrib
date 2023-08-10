---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	disableUserAccounts = $true
}

Invoke-MgBetaForceDomainDelete -DomainId $domainId -BodyParameter $params

```