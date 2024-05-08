---
title: "contentModelUsage resource type"
description: "The contentModelUsage resource provides the information of where a [contentModel](../resources/contentmodel.md) is applied."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# contentModelUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The contentModelUsage resource provides the information of where a [contentModel](../resources/contentmodel.md) is applied. It also provides information about the model itself, including the model version, by whom, and when it is applied.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user, device, or application which first applied the [contentModel](../resources/contentmodel.md) to the library.|
|createdDateTime|DateTimeOffset|Date and time of the [contentModel](../resources/contentmodel.md) is first applied.|
|driveId|String|The id of the drive where the [contentModel](../resources/contentmodel.md) is applied|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user, device, or application which last applied the [contentModel](../resources/contentmodel.md) to the library.|
|lastModifiedDateTime|DateTimeOffset|Date and time of the [contentModel](../resources/contentmodel.md) is last applied.|
|modelId|String|The id of the [contentModel](../resources/contentmodel.md)|
|modelVersion|String|	The version of the current applied [contentModel](../resources/contentmodel.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.contentModelUsage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentModelUsage",
  "modelId": "String",
  "driveId": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "modelVersion": "String"
}
```

