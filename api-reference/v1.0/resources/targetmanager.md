---
title: "targetManager resource type"
description: "Complex type for entitlement management to indicate the manager of the target user who will receive the access package."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 09/30/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1026
#customer intent: As a developer, I want to understand the targetManager resource type so that I can use it correctly in an access package assignment policy.
---
# targetManager resource type

Namespace: microsoft.graph

Used in an access package assignment policy, this type inherits from [subjectSet](../resources/subjectset.md) and indicates the manager of the target user who will receive the access package.

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

