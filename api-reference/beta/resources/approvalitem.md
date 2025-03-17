---
title: "approvalItem resource type"
description: "Represents an approval item."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# approvalItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an approval request, including the associated decisions, status, and responses. Users can create new approval items, view approval items that are sent or received, and take actions on approval items.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/approvalsolution-list-approvalitems.md)|[approvalItem](../resources/approvalitem.md) collection|Get a list of the [approvalItem](../resources/approvalitem.md) objects and their properties.|
|[Create](../api/approvalsolution-post-approvalitems.md)|[approvalItem](../resources/approvalitem.md)|Create a new [approvalItem](../resources/approvalitem.md) object.|
|[Get](../api/approvalitem-get.md)|[approvalItem](../resources/approvalitem.md)|Read the properties and relationships of an [approvalItem](../resources/approvalitem.md) object.|
|[Cancel](../api/approvalitem-cancel.md)|None|Cancel the approval item. The owner of the approval can trigger this endpoint.|
|[List requests](../api/approvalitem-list-requests.md)|[approvalItemRequest](../resources/approvalitemrequest.md) collection|Get the collection of approvalItemRequest for the approvalItem.|
|[List responses](../api/approvalitem-list-responses.md)|[approvalItemResponse](../resources/approvalitemresponse.md) collection|Get the collection of approvalItemResponse for the approvalItem.|
|[Create response](../api/approvalitem-post-responses.md)|[approvalItemResponse](../resources/approvalitemresponse.md)|Create a new **approvalItemResponse** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowCancel|Boolean|Indicates whether the approval item can be canceled.|
|allowEmailNotification|Boolean|Indicates whether email notification is enabled.|
|approvalType|approvalItemType|The workflow type of the approval item. The possible values are: `basic`, `basicAwaitAll`, `custom`, `customAwaitAll`. Required.|
|approvers|[approvalIdentitySet](../resources/approvalidentityset.md) collection|The identity of the principals to whom the approval item was initially assigned. Required.|
|completedDateTime|DateTimeOffset|Approval request completion date and time. Read-only.|
|createdDateTime|DateTimeOffset|Creation date and time of the approval request. Read-only.|
|description|String|The description of the approval request.|
|displayName|String|The displayName of the approval request. Required.|
|id|String|The unique id for the approval item. Read-only.|
|owner|[approvalIdentitySet](../resources/approvalidentityset.md)|The identity set of the principal who owns the approval item. Only provide a value for this property when creating an approval item on behalf of the principal. If the owner field isn't provided, the user information from the user context is used.|
|responsePrompts|String collection|Approval response prompts. Only provide a value for this property when creating a custom approval item. For custom approval items, supply two response prompt strings. The default response prompts are "Approve" and "Reject".|
|result|String|The result field is only populated once the approval item is in its final state. The result of the approval item is based on the approvalType. For basic approval items, the result is either "Approved" or "Rejected". For custom approval items, the result could either be a single response or multiple responses separated by a semi-colon. Read-only.|
|state|approvalItemState|The approval item state. The possible values are: `canceled`, `created`, `pending`, `completed`. Read-only.|
|viewPoint|[approvalItemViewPoint](../resources/approvalitemviewpoint.md)|Represents user viewpoints data on the ApprovalItem. The data includes the users roles regarding the approval item. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|requests|[approvalItemRequest](../resources/approvalitemrequest.md) collection|A collection of requests created for each approver on the approval item.|
|responses|[approvalItemResponse](../resources/approvalitemresponse.md) collection|A collection of responses created for the approval item.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalItem",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "allowEmailNotification": "Boolean",
  "approvalType": "String",
  "responsePrompts": [
    "String"
  ],
  "approvers": [
    {
      "@odata.type": "microsoft.graph.approvalIdentitySet"
    }
  ],
  "state": "String",
  "allowCancel": "Boolean",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "viewPoint": {
    "@odata.type": "microsoft.graph.approvalItemViewPoint"
  },
  "owner": {
    "@odata.type": "microsoft.graph.approvalIdentitySet"
  },
  "result": "String"
}
```
