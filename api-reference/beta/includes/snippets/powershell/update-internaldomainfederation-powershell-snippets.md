---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	DisplayName = "Contoso name change"
	FederatedIdpMfaBehavior = "acceptIfMfaDoneByFederatedIdp"
}

Update-MgDomainFederationConfiguration -DomainId $domainId -InternalDomainFederationId $internalDomainFederationId -BodyParameter $params

```