---
title: "excludeTarget resource type"
description: "Represents the users or groups of users that are excluded from a policy."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# excludeTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the users or groups of users that are excluded from a policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The object identifier of a Microsoft Entra group.|
|targetType|authenticationMethodTargetType|The type of the authentication method target. Possible values are: `group` and `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.excludeTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.excludeTarget",
  "id": "String (identifier)",
  "targetType": "String"
}
```
