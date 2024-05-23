---
title: "multiTenantOrganizationMemberTransitionDetails resource type"
description: "Details of the processing status for a tenant in a multitenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationMemberTransitionDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of the processing status for a tenant in a multitenant organization.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|desiredRole|multiTenantOrganizationMemberRole|Role of the tenant in the multitenant organization. The possible values are: `owner`, `member`, `unknownFutureValue`.|
|desiredState|multiTenantOrganizationMemberState|State of the tenant in the multitenant organization currently being processed. The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`. Read-only.|
|details|String|Details that explain the processing status if any. Read-only.|
|status|multiTenantOrganizationMemberProcessingStatus|Processing state of the asynchronous job. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.multiTenantOrganizationMemberTransitionDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantOrganizationMemberTransitionDetails",
  "desiredState": "String",
  "desiredRole": "String",
  "status": "String",
  "details": "String"
}
```

