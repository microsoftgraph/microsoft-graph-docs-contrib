---
title: "approvalSolution resource type"
description: "Entity used for managing the Approval solutions"
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: resourcePageType
---

# approvalSolution resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity used for managing the Approval solutions.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/approvalsolution-get.md)|[approvalSolution](../resources/approvalsolution.md)|Read the properties and relationships of an [approvalSolution](../resources/approvalsolution.md) object.|
|[provision](../api/approvalsolution-provision.md)|None|Provisions an Approval instance on behalf of the tenant.|
|[List approvalItems](../api/approvalsolution-list-approvalitems.md)|[approvalItem](../resources/approvalitem.md) collection|Get the approvalItem resources from the approvalItems navigation property.|
|[Create approvalItem](../api/approvalsolution-post-approvalitems.md)|[approvalItem](../resources/approvalitem.md)|Create a new approvalItem object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|provisioningStatus|provisionState|The approval provisioning status for a tenant on an environment. The possible values are: `notProvisioned`, `provisioningInProgress`, `provisioningFailed`, `provisioningCompleted`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approvalItems|[approvalItem](../resources/approvalitem.md) collection|Navigation property for the collection of approval items.|

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

