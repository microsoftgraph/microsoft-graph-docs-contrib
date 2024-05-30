---
title: "destinationSummary resource type"
description: "A summary for device destinations."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# destinationSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for device destinations.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int32|The number of the destinationSummary objects, aggregated by Global Secure Access service.|
|destination|String|The IP address or FQDN of the destination.|
|trafficType|microsoft.graph.networkaccess.trafficType|The traffic classification. The allowed values are `internet`, `private`, `microsoft365`, `all`, and `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

