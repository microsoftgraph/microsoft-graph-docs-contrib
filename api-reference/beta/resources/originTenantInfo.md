---
title: "orginTenantInfo resource type"
description: "orginTenantInfo resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "people"
author: "bberdiyev"
ms.date: 07/24/2025
---

# localeInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information about origin tenant of the user which is non-null in case user is invited by different tenant.


## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|originTenantId|string|TODO description|
|originUserId|string|TODO description|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.orginTenantInfo"
}
-->
```json
{
  "originTenantId": "string",
  "originUserId": "string"
}
```
