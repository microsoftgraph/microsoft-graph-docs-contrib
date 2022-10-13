---
title: "deploymentSettings resource type"
description: "Determines when and how the service deploys an update."
author: "aarononeal"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# deploymentSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Determines when and how the service deploys an update.

Base type of [windowsDeploymentSettings](../resources/windowsupdates-windowsdeploymentsettings.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentApplicability|[microsoft.graph.windowsUpdates.contentApplicabilitySettings](../resources/windowsupdates-contentapplicabilitysettings.md)|**TODO: Add Description**|
|expedite|[microsoft.graph.windowsUpdates.expediteSettings](../resources/windowsupdates-expeditesettings.md)|**TODO: Add Description**|
|monitoring|[microsoft.graph.windowsUpdates.monitoringSettings](../resources/windowsupdates-monitoringsettings.md)|Settings governing conditions to monitor and automated actions to take.|
|schedule|[microsoft.graph.windowsUpdates.scheduleSettings](../resources/windowsupdates-schedulesettings.md)|**TODO: Add Description**|
|userExperience|[microsoft.graph.windowsUpdates.userExperienceSettings](../resources/windowsupdates-userexperiencesettings.md)|**TODO: Add Description**|
|rollout|[microsoft.graph.windowsUpdates.rolloutSettings](../resources/windowsupdates-rolloutsettings.md)|Settings governing how the content is rolled out. **TODO: This was renamed schedule. Need to merge referenced content before removing.**|
|safeguard|[microsoft.graph.windowsUpdates.safeguardSettings](../resources/windowsupdates-safeguardsettings.md)|Settings governing safeguard holds on offering content. **TODO: This was moved under contentApplicabilitySettings. Need to merge referenced content before removing.**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentSettings",
  "schedule": {
    "@odata.type": "microsoft.graph.windowsUpdates.scheduleSettings"
  },
  "userExperience": {
    "@odata.type": "microsoft.graph.windowsUpdates.userExperienceSettings"
  },
  "expedite": {
    "@odata.type": "microsoft.graph.windowsUpdates.expediteSettings"
  },
  "monitoring": {
    "@odata.type": "microsoft.graph.windowsUpdates.monitoringSettings"
  },
  "contentApplicability": {
    "@odata.type": "microsoft.graph.windowsUpdates.contentApplicabilitySettings"
  }
}
```

