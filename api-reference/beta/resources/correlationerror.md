---
title: "correlationError resource type"
description: "Represents error details when an identity correlation or individual identity matching fails."
author: "tolian"
ms.date: 05/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# correlationError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents error details when a correlation report fails to be created or an individual identity fails to be correlated. Returned in the **error** property of [identityCorrelation](../resources/identitycorrelation.md) and [correlatedIdentity](../resources/correlatedidentity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|The error code indicating why the correlation failed.|
|message|String|A human-readable description of the error.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.correlationError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.correlationError",
  "code": "String",
  "message": "String"
}
```