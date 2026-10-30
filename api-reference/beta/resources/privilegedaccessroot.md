---
title: "privilegedAccessRoot resource type"
description: "Represents the entry point for resources related to Privileged Identity Management (PIM)."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# privilegedAccessRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point for resources related to Privileged Identity Management (PIM).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List custom extensions](../api/privilegedaccessroot-list-customextensions.md)|[roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) collection|Get a list of PIM custom extensions.|
|[Create custom extension](../api/privilegedaccessroot-post-customextensions.md)|[roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md)|Create a PIM custom extension.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for an object. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtensions|[roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) collection|The custom extensions configured for PIM role management operations.|
|group|[privilegedAccessGroup](../resources/privilegedaccessgroup.md)|A group that's governed through Privileged Identity Management (PIM).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessRoot",
  "id": "String (identifier)"
}
```
