---
title: "accessPackageAssignmentApprovalSettings resource type"
description: "Specifies the settings for approval of a request for an access package assignment in an access package assignment policy."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/04/2024
---
# accessPackageAssignmentApprovalSettings resource type

Namespace: microsoft.graph

Used for the **requestApprovalSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to indicate if approval is needed for new requests for an access package assignment through that policy or for updates to existing requests, and to select who must approve each request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isApprovalRequiredForAdd|Boolean|If `false,` then approval isn't required for new requests in this policy.|
|isApprovalRequiredForUpdate|Boolean|If `false`, then approval isn't required for updates to requests in this policy.|
|isRequestorJustificationRequired|Boolean|If `false`, then requestor justification isn't required for updates to requests in this policy.|
|stages|[accessPackageApprovalStage](../resources/accesspackageapprovalstage.md) collection|If approval is required, the one, two or three elements of this collection define each of the stages of approval. An empty array is present if no approval is required.|

## Relationships
None.
## JSON representation
The following JSON representation shows the resource type.
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
  "isRequestorJustificationRequired": "Boolean",
  "stages": [
    {
      "@odata.type": "microsoft.graph.accessPackageApprovalStage"
    }
  ]
}
```


