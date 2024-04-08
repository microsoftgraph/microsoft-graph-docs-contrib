---
title: "defaultSharingLink resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# defaultSharingLink resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultToExistingAccess|Boolean|**TODO: Add Description**|
|role|sharingRole|**TODO: Add Description**.The possible values are: `none`, `view`, `edit`, `manageList`, `review`, `restrictedView`, `submitOnly`, `unknownFutureValue`.|
|scope|sharingScope|**TODO: Add Description**.The possible values are: `anyone`, `organization`, `specificPeople`, `anonymous`, `users`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.defaultSharingLink"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.defaultSharingLink",
  "role": "String",
  "scope": "String",
  "defaultToExistingAccess": "Boolean"
}
```

