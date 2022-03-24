---
title: "targetManager resource type"
description: "Complex type for entitlement management to indicate the manager, including indirect managers of a user may request on behalf of that user."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# targetManager complex type

Namespace: microsoft.graph

Used in an access package assignment policy, this type inherits from [subjectSet](../resources/subjectset.md) and indicates the manager, including indirect managers of a user may request on behalf of that user.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managerLevel|Int32|Manager level, between 1 and 4. The direct manager is 1.|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.targetManager"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetManager",
  "managerLevel": "Integer"
}
```


