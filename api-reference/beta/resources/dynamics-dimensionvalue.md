---
title: dimensionValue resource type
description: A dimension value in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# dimensionValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a dimension value in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description                   |
|:-------------|:-------------|:-----------------------------|
|[Get dimension](../api/dynamics-dimensionvalue-get.md)|dimensionValues|Gets a dimension value object.|


## Properties
| Property	         | Type                  |Description                                        |
|:-------------------|:----------------------|:--------------------------------------------------|
|id                  |GUID                   |The unique ID of the item.                         |
|code                |string, maximum size 20|The dimension value code.                          |
|displayName         |string                 |Specifies the dimension value's name. This name appears where the dimension value is used.|
|lastModifiedDateTime|datetime               |The last datetime the dimension value was modified.|


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




