---
title: "includeTarget resource type"
description: "A complex type that defines users and groups that are included in a set of changes."
author: ""msft-poulomi""
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# includeTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type that defines users and groups that are included in a set of changes.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|`includeTargets`| `Collection(microsoft.graph.authenticationMethodTarget`)|A collection of setting entities that determines which users/groups may use this auth method and whether registration of the method is required or optional for those users.|
|id|String||The ID of the entity targeted.|
|targetType|authenticationMethodTargetType|The kind of entity targeted, e.g. user or group.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.includeTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.includeTarget",
  "id": "String",
  "targetType": "String"
}
```
