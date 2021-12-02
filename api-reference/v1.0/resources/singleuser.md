---
title: "singleUser complex type"
description: "Identifies a user in the tenant who will be allowed as requestor, approver, or reviewer."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# singleUser complex type

Namespace: microsoft.graph

Used in the request, approval, and assignment review settings of an access package assignment policy. The  `@odata.type` value `#microsoft.graph.singleUser` indicates that this userSet identifies a specific user in the tenant who will be allowed as a requestor, approver, or reviewer.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The name of the user in Azure AD. Read only. |
|userId|String|The ID of the [user](user.md) in Azure AD.|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.singleUser",
  "baseType": "microsoft.graph.subjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.singleUser",
  "userId": "String",
  "description": "String"
}
```



