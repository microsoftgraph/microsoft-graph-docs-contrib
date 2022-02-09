---
title: "groupMembers complex type"
description: "Identifies a collection of users in the tenant who will be allowed as requestor, approver, or reviewer."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# groupMembers complex type

Namespace: microsoft.graph


Used in the request, approval, and assignment review settings of an access package assignment policy.
The `@odata.type` value `#microsoft.graph.groupMembers` indicates that this type identifies a collection of users in the tenant who will be allowed as requestor, approver, or reviewer, who are the members of a specific group.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The name of the group in Azure AD. Read only. |
|groupId|String|The ID of the [group](group.md) in Azure AD.|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupMembers",
  "baseType": "microsoft.graph.subjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupMembers",
  "groupId": "String",
  "description": "String"
}
```



