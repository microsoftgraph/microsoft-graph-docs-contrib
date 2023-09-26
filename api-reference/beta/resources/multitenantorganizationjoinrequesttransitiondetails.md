---
title: "multiTenantOrganizationJoinRequestTransitionDetails resource type"
description: "Details of the processing status for a tenant joining a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationJoinRequestTransitionDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of the processing status for a tenant joining a multi-tenant organization.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|desiredMemberState|multiTenantOrganizationMemberState|State of the tenant in the multi-tenant organization currently being processed. The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`. Read-only.|
|details|String|Details that explain the processing status if any. Read-only.|
|status|multiTenantOrganizationMemberProcessingStatus|Processing state of the asynchronous job. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. Read-only.|

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

