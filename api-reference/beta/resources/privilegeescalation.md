---
title: "privilegeEscalation resource type"
description: "A container for privilege escalation events."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# privilegeEscalation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for privilege escalation events.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|Edm.String|A detailed description of the privilege escalation.|
|displayName|Edm.String|The name of the policy that defines the escalation|
|id|Edm.String|the ID of the privilege escalation. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) collection|The list of actions that the identity could perform.|
|resources|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|The list of resources that the identity could perform actions on.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegeEscalation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegeEscalation",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```