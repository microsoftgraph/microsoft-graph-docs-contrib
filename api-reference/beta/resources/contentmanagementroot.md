---
title: "contentManagementRoot resource type"
description: "Provides the entry point under `/security` for connected source-control repositories."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentManagementRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the entry point under `/security` for connected source-control repositories.


Inherits from [entity](../resources/entity.md).


## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List repositories](../api/contentmanagementroot-list-repositories.md)|[microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md) collection|Get the source-control repositories connected to the tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for this resource. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|repositories|[microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md) collection|Connected source-control repositories that deliver security content as code.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contentManagementRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentManagementRoot",
  "id": "String (identifier)"
}
```
