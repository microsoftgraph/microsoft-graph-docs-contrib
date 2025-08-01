---
title: "approvalItemResponse resource type"
description: "Represents a response to an approval item request."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# approvalItemResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a response to an approval item request.

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
|createdDateTime|DateTimeOffset|Creation date and time of the response.|
|owners|[approvalIdentitySet](../resources/approvalidentityset.md) collection|The identity set of the principal who owns the approval item.|
|response|String|Approver response based on the response options. The default response options are "Approved" and "Rejected". The approval item creator can also define custom response options during [approval item creation](../api/approvalsolution-post-approvalitems.md).|

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

