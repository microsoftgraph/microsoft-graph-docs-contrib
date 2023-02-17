---
title: "resourceConnection resource type"
description: "Represents connections to external resources from which more specialized connections will be derived."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# resourceConnection resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents connections to external resources from which more specialized connections like [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) will be derived.

This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List resourceConnections](../api/adminwindowsupdates-list-resourceconnections.md)|[microsoft.graph.windowsUpdates.resourceConnection](../resources/windowsupdates-resourceconnection.md) collection|Get a list of the [resourceConnection](../resources/windowsupdates-resourceconnection.md) objects and their properties.|
|[Get resourceConnection](../api/windowsupdates-resourceconnection-get.md)|[microsoft.graph.windowsUpdates.resourceConnection](../resources/windowsupdates-resourceconnection.md)|Read the properties and relationships of a [resourceConnection](../resources/windowsupdates-resourceconnection.md) object.|
|[Delete resourceConnection](../api/windowsupdates-resourceconnection-delete.md)|None|Delete a [resourceConnection](../resources/windowsupdates-resourceconnection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|An identifier for the resource connection. Key. Not nullable. Read-only. Returned by default.|
|state|microsoft.graph.windowsUpdates.resourceConnectionState|The state of the connection. The possible values are: `connected`, `notAuthorized`, `notFound`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.resourceConnection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.resourceConnection",
  "id": "String (identifier)",
  "state": "String"
}
```

