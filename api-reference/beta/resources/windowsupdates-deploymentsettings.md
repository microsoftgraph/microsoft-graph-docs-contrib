---
title: "deploymentSettings resource type"
description: "Settings controlling when and how to deploy an update."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# deploymentSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings controlling when and how to deploy an update.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|monitoring|[monitoringSettings](../resources/windowsupdates-monitoringsettings.md)|Settings governing conditions to monitor and automated actions to take.|
|rollout|[rolloutSettings](../resources/windowsupdates-rolloutsettings.md)|Settings governing how the content is rolled out.|

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
  "rollout": {
    "@odata.type": "microsoft.graph.windowsUpdates.rolloutSettings"
  },
  "monitoring": {
    "@odata.type": "microsoft.graph.windowsUpdates.monitoringSettings"
  }
}
```

