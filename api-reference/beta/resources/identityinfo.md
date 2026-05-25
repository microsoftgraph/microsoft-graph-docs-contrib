---
title: "identityInfo resource type"
description: "Represents an identity's information, including anchor and matching properties used during correlation."
author: "tolian"
ms.date: 05/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# identityInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [identity's information](../resources/correlatedidentity.md) used in [identity correlation reports](../resources/identitycorrelation.md). Contains the anchor property, matching property, identity type, and additional details for a source or target identity.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|anchor|[attributeInfo](../resources/attributeinfo.md)|The anchor property that uniquely identifies the identity in its directory.|
|details|[detailsInfo](../resources/detailsinfo.md)|Additional details about the identity.|
|identityType|String|The type of identity, such as `user`.|
|matchingProperty|[attributeInfo](../resources/attributeinfo.md)|The property used to match identities across directories.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityInfo",
  "anchor": {
    "@odata.type": "microsoft.graph.attributeInfo",
    "name": "String",
    "value": "String"
  },
  "matchingProperty": {
    "@odata.type": "microsoft.graph.attributeInfo",
    "name": "String",
    "value": "String"
  },
  "identityType": "String",
  "details": {
    "@odata.type": "microsoft.graph.detailsInfo"
  }
}
```
