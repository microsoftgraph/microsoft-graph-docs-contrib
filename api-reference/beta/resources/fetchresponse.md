---
title: "fetchResponse resource type"
description: "Represents a simulated fetch response supplied through the **fetchResponses** parameter of the Evaluate policy action on resourcePolicyRoot."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# fetchResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a simulated fetch response supplied through the **fetchResponses** parameter of the [Evaluate policy](../api/resourcepolicyroot-evaluatepolicy.md) action on [resourcePolicyRoot](../resources/resourcepolicyroot.md).

Omitting **fetchResponses** or setting it to null preserves live fetch behavior. Supplying a collection, including an empty collection, enables strict simulation using exact **relativePathUri** matching.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|code|Int32|The HTTP status code returned by the simulated fetch.|
|data|[Json](../resources/json.md)|The simulated JSON response data. If omitted, the simulated response data is null.|
|relativePathUri|String|The exact relative URI used to match a simulated fetch call.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fetchResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fetchResponse",
  "relativePathUri": "String",
  "code": "Integer",
  "data": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```
