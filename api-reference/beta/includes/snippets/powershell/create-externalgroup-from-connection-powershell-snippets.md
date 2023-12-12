---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	id = "31bea3d537902000"
	displayName = "Contoso Marketing"
	description = "The product marketing team"
}

New-MgBetaExternalConnectionGroup -ExternalConnectionId $externalConnectionId -BodyParameter $params

```