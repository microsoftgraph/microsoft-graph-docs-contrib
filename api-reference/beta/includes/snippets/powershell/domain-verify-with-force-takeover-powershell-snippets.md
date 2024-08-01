---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	forceTakeover = $true
}

Confirm-MgBetaDomain -DomainId $domainId -BodyParameter $params

```