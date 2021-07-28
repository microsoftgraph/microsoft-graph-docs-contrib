---
title: "request resource type"
description: "**TODO: Add Description**"
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# request resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [entity](entity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalId|String|**TODO: Add Description**|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[identitySet](identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|customData|String|**TODO: Add Description**|
|status|String|**TODO: Add Description**. Possible values are: `Granted`, `Provisioned`, `Failed`, `Revoked`, and `Canceled` status. Not nullable.|
|id|String|Identifier of the request. Read-only. Not nullable. Inherited from [entity](entity.md).|

### status values
| Member      | Description |
|:------------|:------------|
| Granted     |             |
| Provisioned |             |
| Failed      |             |
| Revoked     |             |
| Canceled    |             |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approval|[approval](../resources/approval.md)|Represents the decisions to approve or deny role assignments.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.request",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.request",
  "id": "String (identifier)"
}
```

