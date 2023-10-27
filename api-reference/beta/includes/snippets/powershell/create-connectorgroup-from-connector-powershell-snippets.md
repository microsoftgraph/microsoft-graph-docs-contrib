---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}"
}

New-MgBetaOnPremisePublishingProfileConnectorMemberOfByRef -OnPremisesPublishingProfileId $onPremisesPublishingProfileId -ConnectorId $connectorId -BodyParameter $params

```