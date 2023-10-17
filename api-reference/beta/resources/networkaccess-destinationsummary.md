---
title: "destinationSummary resource type"
description: "A summary for device destinations being accessed."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# destinationSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for device destinations being accessed.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int32|Count of the aggregation.|
|destination|String|destination fqdn or ip.|
|trafficType|microsoft.graph.networkaccess.trafficType|traffic classification.The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.destinationSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.destinationSummary",
  "destination": "String",
  "count": "Integer",
  "trafficType": "String"
}
```

