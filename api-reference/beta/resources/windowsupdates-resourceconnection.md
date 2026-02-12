---
title: "resourceConnection resource type"
description: "Represents connections to external resources from which more specialized connections are derived."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# resourceConnection resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents connections to external resources from which more specialized connections like [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) are derived.

This resource type is abstract.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/adminwindowsupdates-list-resourceconnections.md)|[microsoft.graph.windowsUpdates.resourceConnection](../resources/windowsupdates-resourceconnection.md) collection|Get a list of the [resourceConnection](../resources/windowsupdates-resourceconnection.md) objects and their properties.|
|[Get](../api/windowsupdates-resourceconnection-get.md)|[microsoft.graph.windowsUpdates.resourceConnection](../resources/windowsupdates-resourceconnection.md)|Read the properties and relationships of a [resourceConnection](../resources/windowsupdates-resourceconnection.md) object.|
|[Delete](../api/windowsupdates-resourceconnection-delete.md)|None|Delete a [resourceConnection](../resources/windowsupdates-resourceconnection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|An identifier for the resource connection. Key. Not nullable. Read-only. Returned by default.|
|state|microsoft.graph.windowsUpdates.resourceConnectionState|The state of the connection. The possible values are: `connected`, `notAuthorized`, `notFound`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

