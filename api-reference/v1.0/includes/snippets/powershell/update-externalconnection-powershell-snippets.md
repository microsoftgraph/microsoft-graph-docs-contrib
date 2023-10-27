---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	name = "Contoso HR Service Tickets"
	description = "Connection to index HR service tickets"
}

Update-MgExternalConnection -ExternalConnectionId $externalConnectionId -BodyParameter $params

```