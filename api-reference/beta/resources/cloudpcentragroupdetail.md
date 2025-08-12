---
title: "cloudPcEntraGroupDetail resource type"
description: "Represents the Microsoft Entra group details (for example, ID and display name) for the Entra ID group associated with a user's Reserve Cloud PC assignment."
author: "bert589998"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 08/11/2025
---

# cloudPcEntraGroupDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft Entra group details (for example, ID and display name) for the Entra ID group associated with a user's Reserve Cloud PC assignment.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|groupDisplayName|String|The display name of the Microsoft Entra ID group. Read-only.|
|groupId|String|The unique identifier (GUID) of the Microsoft Entra ID group. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcEntraGroupDetail",
  "openType": false
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcEntraGroupDetail",
  "groupDisplayName": "String",
  "groupId": "String"
}
```
