---
title: "deploymentSettings resource type"
description: "Represents settings that determine when and how the service deploys an update."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# deploymentSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings that determine when and how the service deploys an update.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentApplicability|[microsoft.graph.windowsUpdates.contentApplicabilitySettings](../resources/windowsupdates-contentapplicabilitysettings.md)|Settings for governing whether content is applicable to a device.|
|expedite|[microsoft.graph.windowsUpdates.expediteSettings](../resources/windowsupdates-expeditesettings.md)|Settings for governing whether updates should be expedited.|
|monitoring|[microsoft.graph.windowsUpdates.monitoringSettings](../resources/windowsupdates-monitoringsettings.md)|Settings for governing conditions to monitor and automated actions to take.|
|schedule|[microsoft.graph.windowsUpdates.scheduleSettings](../resources/windowsupdates-schedulesettings.md)|Settings for governing how and when the content is rolled out.|
|userExperience|[microsoft.graph.windowsUpdates.userExperienceSettings](../resources/windowsupdates-userexperiencesettings.md)|Settings for governing end user update experience.|

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
  "contentApplicability": {"@odata.type": "microsoft.graph.windowsUpdates.contentApplicabilitySettings"},
  "expedite": {"@odata.type": "microsoft.graph.windowsUpdates.expediteSettings"},
  "monitoring": {"@odata.type": "microsoft.graph.windowsUpdates.monitoringSettings"},
  "schedule": {"@odata.type": "microsoft.graph.windowsUpdates.scheduleSettings"},
  "userExperience": {"@odata.type": "microsoft.graph.windowsUpdates.userExperienceSettings"}
}
```
