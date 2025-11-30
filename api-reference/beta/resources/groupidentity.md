---
title: "groupIdentity resource type"
description: "Represents the identity of a group-connected site."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# groupIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of a group-connected site. This resource is an open type.

Inherits from [identity](../resources/identity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The mail nick name, also known as group alias of the group-connected site. Inherited from [identity](../resources/identity.md).|
|id|String|Unique identifier for the identity. Inherited from [identity](../resources/identity.md).|
|mailNickname|String|The mail nick name, also known as group alias of the group-connected site.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupIdentity",
  "displayName": "String",
  "id": "String",
  "mailNickname": "String"
}
```

