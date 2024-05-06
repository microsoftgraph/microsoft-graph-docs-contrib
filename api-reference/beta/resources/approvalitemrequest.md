---
title: "approvalItemRequest resource type"
description: "Collections of requests created for each approver on the approval item."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: resourcePageType
---

# approvalItemRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Collections of requests created for each approver on the approval item.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/approvalitem-list-requests.md)|[approvalItemRequest](../resources/approvalitemrequest.md) collection|Get a list of the [approvalItemRequest](../resources/approvalitemrequest.md) objects and their properties.|
|[Create](../api/approvalitem-post-requests.md)|[approvalItemRequest](../resources/approvalitemrequest.md)|Create a new [approvalItemRequest](../resources/approvalitemrequest.md) object.|
|[Get](../api/approvalitemrequest-get.md)|[approvalItemRequest](../resources/approvalitemrequest.md)|Read the properties and relationships of an [approvalItemRequest](../resources/approvalitemrequest.md) object.|
|[Update](../api/approvalitemrequest-update.md)|[approvalItemRequest](../resources/approvalitemrequest.md)|Update the properties of an [approvalItemRequest](../resources/approvalitemrequest.md) object.|
|[Delete](../api/approvalitem-delete-requests.md)|None|Delete an [approvalItemRequest](../resources/approvalitemrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approver|[approvalIdentitySet](../resources/approvalidentityset.md)|The identity set of the principal assigned to this request.|
|createdDateTime|DateTimeOffset|Creation time for the request.|
|isReassigned|Boolean|A flag used for identifying if a request has been reassigned.|
|reassignedFrom|[approvalIdentitySet](../resources/approvalidentityset.md)|The identity set of the principal who reassigned the request.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalItemRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalItemRequest",
  "createdDateTime": "String (timestamp)",
  "approver": {
    "@odata.type": "microsoft.graph.approvalIdentitySet"
  },
  "reassignedFrom": {
    "@odata.type": "microsoft.graph.approvalIdentitySet"
  },
  "isReassigned": "Boolean"
}
```

