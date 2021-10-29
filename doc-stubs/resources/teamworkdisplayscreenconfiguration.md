---
title: "teamworkDisplayScreenConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkDisplayScreenConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|backlightBrightness|Int32|**TODO: Add Description**|
|backlightTimeout|Duration|**TODO: Add Description**|
|isHighContrastEnabled|Boolean|**TODO: Add Description**|
|isScreensaverEnabled|Boolean|**TODO: Add Description**|
|screensaverTimeout|Duration|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkDisplayScreenConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDisplayScreenConfiguration",
  "isScreensaverEnabled": "Boolean",
  "screensaverTimeout": "String (duration)",
  "backlightBrightness": "Integer",
  "backlightTimeout": "String (duration)",
  "isHighContrastEnabled": "Boolean"
}
```

