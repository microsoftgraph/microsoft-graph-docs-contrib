---
title: dimension resource type
description: A dimension in Dynamics 365 Business Central.
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 04/06/2024
---

# dimension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a dimension in Dynamics 365 Business Central.

## Methods
| Method       | Return Type  |Description|
|:-------------|:-------------|:----------|
|[Get dimension](../api/dynamics-dimension-get.md)|dimension|Gets a dimension.|


## Properties
| Property	         | Type                  |Description               |
|:-------------------|:----------------------|:-------------------------|
|id                  |GUID                   |The unique ID of the item.|
|code                |string, maximum size 20|The dimension code.       |
|displayName         |string                 |Specifies the dimension's name. This name appears where the dimension is used.|
|lastModifiedDateTime|datetime               |The last datetime the dimension was modified.|


## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.


```json
{
    "id": "GUID",
    "code": "string",
    "displayName": "string",
    "lastModifiedDateTime": "datetime"
}
```



