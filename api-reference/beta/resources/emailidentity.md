---
title: "emailIdentity resource type"
description: "Represent email identity of a user of a tenant."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "security"
doc_type: resourcePageType
---

# emailIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent email identity of a user of a tenant.


Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of a user. Inherited from [identity](../resources/identity.md).|
|email|String|Email address of a user.|
|id|String|External directory object id of a user. Inherited from [identity](../resources/identity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "email": "String"
}
```

