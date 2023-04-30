---
title: "multiTenantOrganizationJoinRequestTransitionDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# multiTenantOrganizationJoinRequestTransitionDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|desiredMemberState|multiTenantOrganizationMemberState|**TODO: Add Description**.The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`.|
|details|String|**TODO: Add Description**|
|status|multiTenantOrganizationMemberProcessingStatus|**TODO: Add Description**.The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.multiTenantOrganizationJoinRequestTransitionDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantOrganizationJoinRequestTransitionDetails",
  "desiredMemberState": "String",
  "status": "String",
  "details": "String"
}
```

