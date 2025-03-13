---
title: "qrPin resource type"
description: "Represents PIN of the user"
author: "Aanjusingh and ducnguye"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# qrPin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents PIN of the user. Admin creates temporary PIN of the user and user is required to change the PIN during sign-in. User needs to request admin to reset their PIN. Admin can reset the PIN by creating a new temporary PIN.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|PIN of the user. Temporary when issued by admin and permanenet after user changes at first login attempt.|
|createdDateTime|DateTimeOffset|The date and time when the PIN was created.|
|forceChangePinNextSignIn|Boolean|Default true when temporary Pin is created. |
|updatedDateTime|DateTimeOffset|The date and time when the Pin was updated.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.qrPin",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qrPin",
  "code": "String",
  "forceChangePinNextSignIn": "Boolean",
  "createdDateTime": "String (timestamp)",
  "updatedDateTime": "String (timestamp)"
}
```

