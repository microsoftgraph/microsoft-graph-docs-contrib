---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	displayName = "New provisioning"
	resourceName = "domain1.contoso.com"
}

New-MgBetaOnPremisePublishingProfilePublishedResource -OnPremisesPublishingProfileId $onPremisesPublishingProfileId -BodyParameter $params

```