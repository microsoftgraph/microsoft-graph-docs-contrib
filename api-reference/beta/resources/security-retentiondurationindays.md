---
title: "retentionDurationInDays resource type"
description: "Represents the number of days an item will be retained before it can be deleted"
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# retentionDurationInDays resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the number of days an item will be retained before it can be deleted.


Inherits from [retentionDuration](../resources/security-retentionduration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|days|Int32|Specifies the time period in days for which an item with the applied retention label will be retained for.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.retentionDurationInDays"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.retentionDurationInDays",
  "days": "Integer"
}
```