---
title: "defaultSharingLink resource type"
description: "Represents the default sharing link a user can create."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# defaultSharingLink resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the default sharing link a user can create.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultToExistingAccess|Boolean|Indicates whether the default link setting for this object is a direct URL rather than a sharing link.|
|role|sharingRole|The default sharing link role. The possible values are: `none`, `view`, `edit`, `manageList`, `review`, `restrictedView`, `submitOnly`, `unknownFutureValue`.|
|scope|sharingScope|The default sharing link scope. The possible values are: `anyone`, `organization`, `specificPeople`, `anonymous`, `users`, `unknownFutureValue`.|

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
