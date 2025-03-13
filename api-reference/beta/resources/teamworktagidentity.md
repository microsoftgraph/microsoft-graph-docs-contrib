---
title: "teamworkTagIdentity resource type"
description: "Represents a tag in Microsoft Teams."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkTagIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a **tag** in Microsoft Teams. Tags allow users to quickly connect to subset of users in a team. For details about tag management in Microsoft Teams, see [Manage tags in Microsoft Teams](/microsoftteams/manage-tags).


Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Inherited from [identity](../resources/identity.md). Display name of the tag.|
|id|String|Inherited from [identity](../resources/identity.md). ID of the tag.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkTagIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTagIdentity",
  "id": "String (identifier)",
  "displayName": "String"
}
```

