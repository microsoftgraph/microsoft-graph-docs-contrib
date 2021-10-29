---
title: "teamworkDisplayConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkDisplayConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuredDisplays|[teamworkConfiguredPeripheral](../resources/teamworkconfiguredperipheral.md) collection|**TODO: Add Description**|
|displayCount|Int32|**TODO: Add Description**|
|inBuiltDisplayScreenConfiguration|[teamworkDisplayScreenConfiguration](../resources/teamworkdisplayscreenconfiguration.md)|**TODO: Add Description**|
|isContentDuplicationAllowed|Boolean|**TODO: Add Description**|
|isDualDisplayModeEnabled|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkDisplayConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDisplayConfiguration",
  "displayCount": "Integer",
  "isDualDisplayModeEnabled": "Boolean",
  "isContentDuplicationAllowed": "Boolean",
  "configuredDisplays": [
    {
      "@odata.type": "microsoft.graph.teamworkConfiguredPeripheral"
    }
  ],
  "inBuiltDisplayScreenConfiguration": {
    "@odata.type": "microsoft.graph.teamworkDisplayScreenConfiguration"
  }
}
```

