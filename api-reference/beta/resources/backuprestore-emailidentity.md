---
title: "emailIdentity resource type"
description: "Email Identiy of a User or a Group"
author: "Vassu05"
ms.date: 05/29/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# emailIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the mail identity of a user or a mail enabled distribution group

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the user or the group|
|email|String|mail address of the user or the group|
|id|String|id of the user or the group|

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
  "id": "String",
  "email": "String"
}
```

