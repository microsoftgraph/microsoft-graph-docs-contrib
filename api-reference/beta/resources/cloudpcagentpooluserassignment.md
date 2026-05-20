---
title: "cloudPcAgentPoolUserAssignment resource type"
description: "Represents an assignment of a user to a Cloud PC agent pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcAgentPoolUserAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an assignment of a user to a Cloud PC agent pool.

Inherits from [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md).

## Methods

For the list of supported methods, see [cloudPcPoolAssignment](./cloudpcpoolassignment.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the assignment. Read-only. Inherited from [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md).|
|userPrincipalId|String|The unique identifier of the user principal.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcAgentPoolUserAssignment",
  "baseType": "microsoft.graph.cloudPcPoolAssignment",
  "openType": false
} -->
```json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentPoolUserAssignment",
  "id": "String (identifier)",
  "userPrincipalId": "String"
}
```
