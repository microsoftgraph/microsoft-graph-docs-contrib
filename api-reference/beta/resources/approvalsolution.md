---
title: "approvalSolution resource type"
description: "Represents the provisioning status of the approval solution for a tenant."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# approvalSolution resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the provisioning status of the approval solution for a tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/approvalsolution-get.md)|[approvalSolution](../resources/approvalsolution.md)|Read the properties and relationships of an [approvalSolution](../resources/approvalsolution.md) object.|
|[Provision](../api/approvalsolution-provision.md)|None|Provisions an approval solution instance on behalf of the tenant.|
|[List approval items](../api/approvalsolution-list-approvalitems.md)|[approvalItem](../resources/approvalitem.md) collection|Get the approvalItem resources from the approvalItems navigation property.|
|[Create approval item](../api/approvalsolution-post-approvalitems.md)|[approvalItem](../resources/approvalitem.md)|Create a new approvalItem object.|
|[Get approval operation](../api/approvaloperation-get.md)|[approvalOperation](../resources/approvaloperation.md)|Get an approvalOperation object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|provisioningStatus|provisionState|The approval provisioning status for a tenant on an environment. The possible values are: `notProvisioned`, `provisioningInProgress`, `provisioningFailed`, `provisioningCompleted`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approvalItems|[approvalItem](../resources/approvalitem.md) collection|A collection of approval items.|
|approvalOperations|[approvalOperation](../resources/approvaloperation.md) collection|A collection of approval operations.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalSolution",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalSolution",
  "provisioningStatus": "String"
}
```

