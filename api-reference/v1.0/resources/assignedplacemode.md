---
title: "assignedPlaceMode resource type"
description: "Defines the user to whom a desk is assigned."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# assignedPlaceMode resource type

Namespace: microsoft.graph

Defines the user to whom a [desk](./desk.md) is assigned. This mode is only supported for **desk** objects. All the assigned **desk** objects must be assigned to a user. Either property can be used to assign a **desk** to a user.

Inherits from [placeMode](../resources/placemode.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedUserEmailAddress|String|The email address of the user to whom the desk is assigned.|
|assignedUserId|String|The user ID of the user to whom the desk is assigned.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignedPlaceMode"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignedPlaceMode",
  "assignedUserEmailAddress": "String",
  "assignedUserId": "String"
}
```

