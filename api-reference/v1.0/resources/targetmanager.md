---
title: "targetManager resource type"
description: "Complex type for entitlement management to indicate the manager, including indirect managers of a user may request on behalf of that user."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/04/2024
---
# targetManager resource type

Namespace: microsoft.graph

Used in an access package assignment policy, this type inherits from [subjectSet](../resources/subjectset.md) and indicates the manager, including indirect managers of a user may request on behalf of that user.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managerLevel|Int32|Manager level, between 1 and 4. The direct manager is 1.|

## Relationships
None.
## JSON representation
The following JSON representation shows the resource type.
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


