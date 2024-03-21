---
title: "requestorManager complex type"
description: "Identifies a relationship to another user in the tenant who is allowed as approver."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---
# requestorManager complex type

Namespace: microsoft.graph

Used in the approval settings of an access package assignment policy.
It's a subtype of [subjectSet](subjectset.md), in which the `@odata.type` value `#microsoft.graph.requestorManager` indicates that a requesting user's manager is to be the approver.  When creating an access package assignment policy approval stage with requestorManager, also include another approver, such as a single user or group member, in case the requesting user doesn't have a manager.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managerLevel|Int32|The hierarchical level of the manager with respect to the requestor. For example, the direct manager of a requestor would have a managerLevel of 1, while the manager of the requestor's manager would have a managerLevel of 2. Default value for managerLevel is 1. Possible values for this property range from 1 to 2. |

## Relationships
None.
## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.requestorManager",
  "baseType": "microsoft.graph.subjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.requestorManager",
  "managerLevel": "Integer"
}
```


