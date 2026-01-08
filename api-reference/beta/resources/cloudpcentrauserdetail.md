---
title: "cloudPcEntraUserDetail resource type"
description: "Represents the user details (for example, ID and display name) for a user associated with a Reserve Cloud PC assignment."
author: "bert589998"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 08/11/2025
---

# cloudPcEntraUserDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the user details (for example, ID and display name) for a user associated with a Reserve Cloud PC assignment.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|userDisplayName|String|The display name of the user. Read-only.|
|userId|String|The unique identifier (GUID) of the user. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcEntraUserDetail",
  "openType": false
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcEntraUserDetail",
  "userDisplayName": "String",
  "userId": "String"
}
```
