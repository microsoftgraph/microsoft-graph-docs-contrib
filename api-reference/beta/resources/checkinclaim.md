---
title: "checkInClaim resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# checkInClaim resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/place-post-checkins.md)|[checkInClaim](../resources/checkinclaim.md)|Create a new checkInClaim object.|
|[Get](../api/checkinclaim-get.md)|[checkInClaim](../resources/checkinclaim.md)|Read the properties and relationships of [checkInClaim](../resources/checkinclaim.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calendarEventId|String|**TODO: Add Description**|
|checkInMethod|checkInMethod|**TODO: Add Description**. The possible values are: `unspecified`, `manual`, `inferred`, `verified`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "calendarEventId",
  "@odata.type": "microsoft.graph.checkInClaim",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.checkInClaim",
  "calendarEventId": "String (identifier)",
  "checkInMethod": "String",
  "createdDateTime": "String (timestamp)"
}
```

