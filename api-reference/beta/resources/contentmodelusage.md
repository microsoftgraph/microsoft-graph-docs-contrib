---
title: "contentModelUsage resource type"
description: "Provides information on where, by whom, and when a content model is applied."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 05/30/2024
---

# contentModelUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about where, by whom, and when a [contentModel](../resources/contentmodel.md) is applied, including information about the model itself, such as the model version.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user, device, or application that first applied the [contentModel](../resources/contentmodel.md) to the library.|
|createdDateTime|DateTimeOffset|Date and time of the [contentModel](../resources/contentmodel.md) is first applied.|
|driveId|String|The ID of the drive where the [contentModel](../resources/contentmodel.md) is applied.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user, device, or application that last applied the [contentModel](../resources/contentmodel.md) to the library.|
|lastModifiedDateTime|DateTimeOffset|Date and time of the [contentModel](../resources/contentmodel.md) is last applied.|
|modelId|String|The ID of the [contentModel](../resources/contentmodel.md).|
|modelVersion|String|The version of the current applied [contentModel](../resources/contentmodel.md).|

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

