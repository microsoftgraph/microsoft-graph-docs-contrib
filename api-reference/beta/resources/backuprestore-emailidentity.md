---
title: "emailIdentity resource type"
description: "Represents the email identity of a user or an email-enabled distribution group."
author: "Vassu05"
ms.date: 05/29/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# emailIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the email identity of a user or an email-enabled distribution group.

Inherits from [identity](identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the user or the group. Inherited from [identity](identity.md).|
|email|String|The email address of the user or the group.|
|id|String|The unique identifier of the user or the group. Inherited from [identity](identity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailIdentity",
  "displayName": "String",
  "email": "String",
  "id": "String (identifier)"
}
```

