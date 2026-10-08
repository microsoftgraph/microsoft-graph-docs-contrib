---
title: "controlConfiguration resource type"
description: "Defines the lifecycle and access policies of Entitlement Management within a tenant."
author: "markwahl-msft"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# controlConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the lifecycle and access policies of Entitlement Management within a tenant.

Inherits from [entity](../resources/entity.md).


## Methods

None.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The userPrincipalName of the user or identity that created the control configuration.|
|createdDateTime|DateTimeOffset|The date and time the control configuration was created.|
|id|String|The unique identifier for the control configuration. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Determines whether or not the control configuration is enabled.|
|modifiedBy|String|The userPrincipalName of the user or identity that modified the control configuration.|
|modifiedDateTime|DateTimeOffset|The date and time the control configuration was modified.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.controlConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.controlConfiguration",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedBy": "String",
  "modifiedDateTime": "String (timestamp)"
}
```
