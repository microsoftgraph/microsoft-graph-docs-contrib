---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	incidentIds = @(
	"2972395"
"2972396"
)
incidentComment = "Merging related incidents from the same campaign"
mergeReasons = "sameCampaign, sameActor"
}

Merge-MgSecurityIncident -BodyParameter $params

```