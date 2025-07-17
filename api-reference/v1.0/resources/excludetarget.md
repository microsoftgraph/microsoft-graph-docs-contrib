---
title: "excludeTarget resource type"
description: "Represents the users or groups of users that are excluded from a policy."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# excludeTarget resource type

Namespace: microsoft.graph

Represents the users or groups of users that are excluded from a policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The object identifier of a Microsoft Entra user or group.|
|targetType|authenticationMethodTargetType|The type of the authentication method target. Possible values are: `user`, `group`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
