---
title: "operationApprovalRequest resource type"
description: "The OperationApprovalRequest entity encompasses the operation an admin wishes to perform and is requesting approval to complete. It contains the detail of the operation one wishes to perform, user metadata of the requestor, and a justification for the change. It allows for several operations for both the requestor and the potential approver to either approve, deny, or cancel the request and a response justification to provide information for the decision."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# operationApprovalRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The OperationApprovalRequest entity encompasses the operation an admin wishes to perform and is requesting approval to complete. It contains the detail of the operation one wishes to perform, user metadata of the requestor, and a justification for the change. It allows for several operations for both the requestor and the potential approver to either approve, deny, or cancel the request and a response justification to provide information for the decision.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List operationApprovalRequests](../api/intune-rbac-operationapprovalrequest-list.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) collection|List properties and relationships of the [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) objects.|
|[Get operationApprovalRequest](../api/intune-rbac-operationapprovalrequest-get.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md)|Read properties and relationships of the [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) object.|
|[Create operationApprovalRequest](../api/intune-rbac-operationapprovalrequest-create.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md)|Create a new [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) object.|
|[Delete operationApprovalRequest](../api/intune-rbac-operationapprovalrequest-delete.md)|None|Deletes a [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md).|
|[Update operationApprovalRequest](../api/intune-rbac-operationapprovalrequest-update.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md)|Update the properties of a [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) object.|
|[getRequestStatus action](../api/intune-rbac-operationapprovalrequest-getrequeststatus.md)|[operationApprovalRequestEntityStatus](../resources/intune-rbac-operationapprovalrequestentitystatus.md)||
|[getMyRequestById function](../api/intune-rbac-operationapprovalrequest-getmyrequestbyid.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md)||
|[getMyRequests function](../api/intune-rbac-operationapprovalrequest-getmyrequests.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) collection||
|[cancelMyRequest action](../api/intune-rbac-operationapprovalrequest-cancelmyrequest.md)|None||
|[approve action](../api/intune-rbac-operationapprovalrequest-approve.md)|String|Approves the requested instance of an operationApprovalRequest.|
|[reject action](../api/intune-rbac-operationapprovalrequest-reject.md)|String|Rejects the requested instance of an operationApprovalRequest.|
|[cancelApproval action](../api/intune-rbac-operationapprovalrequest-cancelapproval.md)|String|Cancels an already approved instance of an operationApprovalRequest.|
|[retrieveRequestStatus action](../api/intune-rbac-operationapprovalrequest-retrieverequeststatus.md)|[operationApprovalRequestEntityStatus](../resources/intune-rbac-operationapprovalrequestentitystatus.md)||
|[retrieveMyRequestById function](../api/intune-rbac-operationapprovalrequest-retrievemyrequestbyid.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md)||
|[retrieveMyRequests function](../api/intune-rbac-operationapprovalrequest-retrievemyrequests.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) collection||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the request. This ID is assigned at when the request is created. Read-only.|
|requestDateTime|DateTimeOffset|Indicates the DateTime that the request was made. The value cannot be modified and is automatically populated when the request is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.|
|expirationDateTime|DateTimeOffset|Indicates the DateTime when any action on the approval request is no longer permitted. The value cannot be modified and is automatically populated when the request is created using expiration offset values defined in the service controllers. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|Indicates the last DateTime that the request was modified. The value cannot be modified and is automatically populated whenever values in the request are updated. For example, when the 'status' property changes from `needsApproval` to `approved`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.|
|requestor|[identitySet](../resources/intune-rbac-identityset.md)|The identity of the requestor as an Identity Set. Optionally contains the application ID, the device ID and the User ID. See information about this type here: https://learn.microsoft.com/graph/api/resources/identityset?view=graph-rest-1.0. Read-only. This property is read-only.|
|approver|[identitySet](../resources/intune-rbac-identityset.md)|The identity of the approver as an Identity Set. Optionally contains the application ID, the device ID and the User ID. See information about this type here: https://learn.microsoft.com/graph/api/resources/identityset?view=graph-rest-1.0. Read-only. This property is read-only.|
|status|[operationApprovalRequestStatus](../resources/intune-rbac-operationapprovalrequeststatus.md)|The current approval status of the request. Possible values are: `unknown`, `needsApproval`, `approved`, `rejected`, `cancelled`, `completed`, `expired`. Default value is `unknown`. Read-only. This property is read-only. Possible values are: `unknown`, `needsApproval`, `approved`, `rejected`, `cancelled`, `completed`, `expired`, `unknownFutureValue`.|
|requestJustification|String|Indicates the justification for creating the request. Maximum length of justification is 1024 characters. For example: 'Needed for Feb 2023 application baseline updates.' Read-only. This property is read-only.|
|approvalJustification|String|Indicates the justification for approving or rejecting the request. Maximum length of justification is 1024 characters. For example: 'Approved per Change 23423 - needed for Feb 2023 application baseline updates.' Read-only. This property is read-only.|
|requiredOperationApprovalPolicyTypes|[operationApprovalPolicyType](../resources/intune-rbac-operationapprovalpolicytype.md) collection|Indicates the approval policy types required by the request in order for the request to be approved or rejected. Read-only. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.operationApprovalRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.operationApprovalRequest",
  "id": "String (identifier)",
  "requestDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "requestor": {
    "@odata.type": "microsoft.graph.identitySet",
    "application": {
      "@odata.type": "microsoft.graph.identity",
      "id": "String",
      "displayName": "String"
    },
    "device": {
      "@odata.type": "microsoft.graph.identity",
      "id": "String",
      "displayName": "String"
    },
    "user": {
      "@odata.type": "microsoft.graph.identity",
      "id": "String",
      "displayName": "String"
    }
  },
  "approver": {
    "@odata.type": "microsoft.graph.identitySet",
    "application": {
      "@odata.type": "microsoft.graph.identity",
      "id": "String",
      "displayName": "String"
    },
    "device": {
      "@odata.type": "microsoft.graph.identity",
      "id": "String",
      "displayName": "String"
    },
    "user": {
      "@odata.type": "microsoft.graph.identity",
      "id": "String",
      "displayName": "String"
    }
  },
  "status": "String",
  "requestJustification": "String",
  "approvalJustification": "String",
  "requiredOperationApprovalPolicyTypes": [
    "String"
  ]
}
```