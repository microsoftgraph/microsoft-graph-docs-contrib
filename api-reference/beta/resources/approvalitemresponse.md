---
title: "approvalItemResponse resource type"
description: "This entity type is used for managing the ApprovalItem responses."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: resourcePageType
---

# approvalItemResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity type is used for managing the ApprovalItem responses.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/approvalitem-list-responses.md)|[approvalItemResponse](../resources/approvalitemresponse.md) collection|Get a list of the [approvalItemResponse](../resources/approvalitemresponse.md) objects and their properties.|
|[Create](../api/approvalitem-post-responses.md)|[approvalItemResponse](../resources/approvalitemresponse.md)|Create a new [approvalItemResponse](../resources/approvalitemresponse.md) object.|
|[Get](../api/approvalitemresponse-get.md)|[approvalItemResponse](../resources/approvalitemresponse.md)|Read the properties and relationships of an [approvalItemResponse](../resources/approvalitemresponse.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|comments|String|The comment made by the approver.|
|createdBy|[approvalIdentitySet](../resources/approvalidentityset.md)|The identity set of the approver.|
|createdDateTime|DateTimeOffset|Creation time of the response.|
|owners|[approvalIdentitySet](../resources/approvalidentityset.md) collection|The identity set of the principal who owns the approval item.|
|response|String|Approver response based on the response options.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalItemResponse",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalItemResponse",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.approvalIdentitySet"
  },
  "comments": "String",
  "response": "String",
  "owners": [
    {
      "@odata.type": "microsoft.graph.approvalIdentitySet"
    }
  ]
}
```

