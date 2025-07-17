---
title: "taxGroup resource type"
description: "A tax group object in Dynamics 365 Business Central."
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# taxGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a taxGroup object in Dynamics 365 Business Central.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get tax groups](../api/dynamics-taxgroups-get.md)|taxGroup|Get a tax group object.|
|[Create tax groups](../api/dynamics-create-taxgroups.md)|taxGroup|Create a tax group object.|
|[Update tax groups](../api/dynamics-taxgroups-update.md)|taxGroup|Update a tax group object.|
|[Delete tax groups](../api/dynamics-taxgroups-delete.md)|None|Delete a tax group object.|

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

The following JSON representation shows the resource type.

```json
{
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "taxType": "String"
}
```
