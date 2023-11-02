---
title: "privilegeEscalation resource type"
description: "Represents the Privilege Escalation events."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# privilegeEscalation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Privilege Escalation events.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegeEscalations](../api/privilegeescalationuserfinding-list-potentialprivilegeescalations.md)|[privilegeEscalation](../resources/privilegeescalation.md) collection|Get a list of the [privilegeEscalation](../resources/privilegeescalation.md) objects and their properties.|
|[Get privilegeEscalation](../api/privilegeescalation-get.md)|[privilegeEscalation](../resources/privilegeescalation.md)|Read the properties and relationships of a [privilegeEscalation](../resources/privilegeescalation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|Edm.String|A detailed description of the privilege escalation.|
|displayName|Edm.String|The name of the policy that defines the escalation|
|id|Edm.String|the ID of the privilege escalation Inherited from [entity](../resources/entity.md).|

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

