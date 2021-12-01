---
title: "accessPackageAssignmentApprovalSettings complex type"
description: "Used for the request approval settings of an access package assignment policy. Provides additional settings to select who must approve each request."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackageAssignmentApprovalSettings complex type

Namespace: microsoft.graph

Used for the request approval settings of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to select who must approve each request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isApprovalRequiredForAdd|Boolean|If false, then approval is not required for new requests in this policy.|
|isApprovalRequiredForUpdate|Boolean|If false, then approval is not required for updates to requests in this policy.|
|stages|[accessPackageApprovalStage](../resources/accesspackageapprovalstage.md) collection|If approval is required, the one or two elements of this collection define each of the stages of approval. An empty array if no approval is required.|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAssignmentApprovalSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentApprovalSettings",
  "isApprovalRequiredForAdd": true,
  "isApprovalRequiredForUpdate": true,
  "stages": [
    {
      "@odata.type": "microsoft.graph.accessPackageApprovalStage"
    }
  ]
}
```


