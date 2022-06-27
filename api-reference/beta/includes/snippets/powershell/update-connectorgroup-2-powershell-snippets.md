---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	Name = "name-value"
	Region = "region-value"
}

Update-MgOnPremisePublishingProfileConnectorGroup -OnPremisesPublishingProfileId $onPremisesPublishingProfileId -ConnectorGroupId $connectorGroupId -BodyParameter $params

```