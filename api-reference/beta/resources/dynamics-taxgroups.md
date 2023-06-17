---
title: "taxGroups resource type"
description: "A tax group object in Dynamics 365 Business Central." 
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# taxGroups resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [taxGroups](dynamics-taxgroups.md) object in Dynamics 365 Business Central.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get taxGroups](../api/dynamics-taxgroups-get.md)|[taxGroups](dynamics-taxgroups.md)|Get a tax group object.|
|[Post taxGroups](../api/dynamics-create-taxgroups.md)|[taxGroups](dynamics-taxgroups.md)|Create a tax group object.|
|[Patch taxGroups](../api/dynamics-taxgroups-update.md)|[taxGroups](dynamics-taxgroups.md)|Update a tax group object.|
|[Delete taxGroups](../api/dynamics-taxgroups-delete.md)|None|Delete a tax group object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|code|String|Indicates the tax group.|
|displayName|String|The display name of the tax group.|
|id|String|The unique identifier for the tax group. Read-Only.|
|lastModifiedDateTime|datetime|The date and time when the tax group was last modified. Read-Only.|  
|taxType|string|The tax type for the group.|


## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "taxType": "String"
}
```
