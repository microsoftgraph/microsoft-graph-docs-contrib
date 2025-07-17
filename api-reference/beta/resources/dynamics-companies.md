---
title: company resource type
description: A company in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# company resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a company resource type in Dynamics 365 Business Central.

## Methods

| Method         | Return Type  |Description|
|:---------------|:-------------|:----------|
|[Get companies](../api/dynamics-companies-get.md)|company|Get a company.|

## Properties
| Property	      | Type |Description                             |
|:----------------|:-----|:---------------------------------------|
|id               |GUID  |The unique ID of the company. Read-Only.|
|name             |string|Specifies the Company.                  |
|displayName      |string|Specifies the company display name.     |
|systemVersion    |string|Specifies the internal version of the company.|
|businessProfileId|string|Specifies the Business Profile ID linked to the company.|


## Relationships
None.

## JSON representation

Here's a JSON representation of the company.

```json
{
  "id": "GUID",
  "name": "string",
  "displayName": "string",
  "systemVersion": "string",
  "businessProfileId": "string"
}
```




