---
title: "assignedPlaceMode resource type"
description: "Defines the user to whom a desk is assigned."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# assignedPlaceMode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the user to whom a desk is assigned. This mode is only supported for [desks](./desk.md). All the assigned **desks** must be assigned to a user. Either property can be used to assign a **desk** to a user.

Inherits from [placeMode](../resources/placemode.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedUserEmailAddress|String|Email address of the user to whom the desk is assigned.|
|assignedUserId|String|User id of the user to whom the desk is assigned.|

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
  "@odata.type": "#microsoft.graph.assignedPlaceMode ",
  "assignedPersonId": "u123",
  "assignedPersonEmailAddress": "meganb@contoso.com"
}
```

