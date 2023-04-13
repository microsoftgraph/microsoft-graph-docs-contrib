---
title: "accessPackageAssignmentApprovalSettings complex type"
description: "Specifies the settings for approval of a request for an access package assignment in an access package assignment policy."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackageAssignmentApprovalSettings complex type

Namespace: microsoft.graph

Used for the **requestApprovalSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to indicate if approval is needed for new requests for an access package assignment through that policy or for updates to existing requests, and to select who must approve each request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isApprovalRequiredForAdd|Boolean|If `false,` then approval is not required for new requests in this policy.|
|isApprovalRequiredForUpdate|Boolean|If `false`, then approval is not required for updates to requests in this policy.|
|stages|[accessPackageApprovalStage](../resources/accesspackageapprovalstage.md) collection|If approval is required, the one, two or three elements of this collection define each of the stages of approval. An empty array is present if no approval is required.|

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
  "isApprovalRequiredForAdd": "Boolean",
  "isApprovalRequiredForUpdate": "Boolean",
  "stages": [
    {
      "@odata.type": "microsoft.graph.accessPackageApprovalStage"
    }
  ]
}
```


