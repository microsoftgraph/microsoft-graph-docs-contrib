---
title: "retentionDuration resource type"
description: "Represents how long content will be retained before it can be deleted. "
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# retentionDuration resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents how long an item will be retained before it can be deleted. This is an abstract type. 
The **retentionDuration** resource is the base type for the
[retentionDurationForever](../resources/security-retentiondurationforever.md) and [retnetionDurationInDays](../resources/security-retentiondurationindays.md) resourceTypes.

## Properties
None.

## Relationships
None.

## JSON representation for retentionDuration
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.retentionDuration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.retentionDuration"
}
```


