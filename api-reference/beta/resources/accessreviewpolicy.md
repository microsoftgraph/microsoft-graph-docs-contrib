---
title: "accessReviewPolicy resource type"
description: "Access reviews Policy is a singleton that enable organizations to manage access review directory level policy."
author: "kafen"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Access reviews Policy is a singleton that enable organizations to manage access review directory level policy.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get accessReviewPolicy](../api/accessreviewpolicy-get.md)|[accessReviewPolicy](../resources/accessreviewpolicy.md)|Read the properties and relationships of an [accessReviewPolicy](../resources/accessreviewpolicy.md) object.|
|[Update accessReviewPolicy](../api/accessreviewpolicy-update.md)|[accessReviewPolicy](../resources/accessreviewpolicy.md)|Update the properties of an [accessReviewPolicy](../resources/accessreviewpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description for this policy.|
|displayName|String|Display name for this policy.|
|isGroupOwnerManagementEnabled|Boolean|If true, group owners can create and manage access reviews on groups they own|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewPolicy",
  "displayName": "String",
  "description": "String",
  "isGroupOwnerManagementEnabled": "Boolean"
}
```

