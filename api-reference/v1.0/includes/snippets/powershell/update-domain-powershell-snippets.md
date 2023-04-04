---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	IsDefault = $true
	SupportedServices = @(
		"Email"
		"OfficeCommunicationsOnline"
	)
}

Update-MgDomain -DomainId $domainId -BodyParameter $params

```