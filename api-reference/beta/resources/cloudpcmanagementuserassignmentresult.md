---
title: "cloudPcManagementUserAssignmentResult resource type"
description: "Complex type that Represents the users that the policy is assigned to based on assignment computation result."
author: "GuoanTang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcManagementUserAssignmentResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type that Represents the users that the policy is assigned to based on assignment computation result.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|`userIds`|`Collection(Edm.String)`|The ids of users computed based on this particular assignment. It is a read-only list.|No|Yes|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcManagementUserAssignmentResult"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcManagementUserAssignmentResult",
  "userIds": [ "String" ]
}
```
