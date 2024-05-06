---
title: "approvalItem resource type"
description: "Represents an approval item."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: resourcePageType
---

# approvalItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An approval item is an object that represents the approval including the decision, requests, and responses associated. Users can create new approval items, view the ones sent or received, and take actions on them.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/approvalsolution-list-approvalitems.md)|[approvalItem](../resources/approvalitem.md) collection|Get a list of the [approvalItem](../resources/approvalitem.md) objects and their properties.|
|[Create](../api/approvalsolution-post-approvalitems.md)|[approvalItem](../resources/approvalitem.md)|Create a new [approvalItem](../resources/approvalitem.md) object.|
|[Get](../api/approvalitem-get.md)|[approvalItem](../resources/approvalitem.md)|Read the properties and relationships of an [approvalItem](../resources/approvalitem.md) object.|
|[cancel](../api/approvalitem-cancel.md)|None|Cancel the approval item. The owner of the approval can trigger this endpoint.|
|[List requests](../api/approvalitem-list-requests.md)|[approvalItemRequest](../resources/approvalitemrequest.md) collection|Get the approvalItemRequest resources from the requests navigation property.|
|[List responses](../api/approvalitem-list-responses.md)|[approvalItemResponse](../resources/approvalitemresponse.md) collection|Get the approvalItemResponse resources from the responses navigation property.|
|[Create approvalItemResponse](../api/approvalitem-post-responses.md)|[approvalItemResponse](../resources/approvalitemresponse.md)|Create a new approvalItemResponse object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowCancel|Boolean|This property would be True if the ApprovalItem can be canceled. Read-only.|
|allowEmailNotification|Boolean|This property would be used for enabling email notification.|
|approvalType|approvalItemType|The approval type describes the workflow of the approvalItem. The possible values are: `basic`, `basicAwaitAll`, `custom`, `customAwaitAll`, `unknownFutureValue`. Required.|
|approvers|[approvalIdentitySet](../resources/approvalidentityset.md) collection|This property is used for setting the identity of the Principals the ApprovalItem is initially assigned to. Required.|
|completedDateTime|DateTimeOffset|Approval request completion time. Read-only.|
|createdDateTime|DateTimeOffset|Creation time of the approval request. Read-only.|
|description|String|The description of the approval request.|
|displayName|String|The displayName of the approval request. Required.|
|id|String|The approval item unique id. Read-only.|
|owner|[approvalIdentitySet](../resources/approvalidentityset.md)|The identity set of the principal who owns the approval item. The owner field would only be provided when an application is creating an ApprovalItem on behalf of the principal. If the owner field is not provided the user information from the user context is used.|
|responsePrompts|String collection|Approval response prompts. The input length here would be minimum of 2 and maximum of 2.|
|result|String|The result field would only be populated once the ApprovalItem gotten to it final state. The result of the approvalItem is based on the approvalType. The result could either be a single response or multiple responses separated by semi-colon. Read-only.|
|state|approvalItemState|The approvalItem state. The possible values are: `canceled`, `created`, `pending`, `completed`, `unknownFutureValue`. Read-only.|
|viewPoint|[approvalItemViewPoint](../resources/approvalitemviewpoint.md)|Represents user viewpoints data on the ApprovalItem. The data includes the users roles regarding the approval item. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|requests|[approvalItemRequest](../resources/approvalitemrequest.md) collection|Collections of requests created for each approver on the approval item.|
|responses|[approvalItemResponse](../resources/approvalitemresponse.md) collection|Collections of responses created for the approval item.|

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

