---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	name = "Contoso HR Service Tickets"
	description = "Connection to index HR service tickets"
}

Update-MgBetaExternalConnection -ExternalConnectionId $externalConnectionId -BodyParameter $params

```