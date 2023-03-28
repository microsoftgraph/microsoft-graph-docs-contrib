---
title: "operationApprovalRequest resource type"
description: "The OperationApprovalRequest Entity"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# operationApprovalRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The OperationApprovalRequest Entity

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List operationApprovalRequests](../api/intune-rbac-operationapprovalrequest-list.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) collection|List properties and relationships of the [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) objects.|
|[Get operationApprovalRequest](../api/intune-rbac-operationapprovalrequest-get.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md)|Read properties and relationships of the [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) object.|
|[Create operationApprovalRequest](../api/intune-rbac-operationapprovalrequest-create.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md)|Create a new [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) object.|
|[Delete operationApprovalRequest](../api/intune-rbac-operationapprovalrequest-delete.md)|None|Deletes a [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md).|
|[Update operationApprovalRequest](../api/intune-rbac-operationapprovalrequest-update.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md)|Update the properties of a [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) object.|
|[approve action](../api/intune-rbac-operationapprovalrequest-approve.md)|String|Approves the requested instance of an operationApprovalRequest|
|[reject action](../api/intune-rbac-operationapprovalrequest-reject.md)|String|Rejects the requested instance of an operationApprovalRequest|
|[cancelApproval action](../api/intune-rbac-operationapprovalrequest-cancelapproval.md)|String|Cancels an already approved instance of an operationApprovalRequest|
|[getRequestStatus action](../api/intune-rbac-operationapprovalrequest-getrequeststatus.md)|[operationApprovalRequestEntityStatus](../resources/intune-rbac-operationapprovalrequestentitystatus.md)|Not yet documented|
|[getMyRequestById function](../api/intune-rbac-operationapprovalrequest-getmyrequestbyid.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md)|Not yet documented|
|[getMyRequests function](../api/intune-rbac-operationapprovalrequest-getmyrequests.md)|[operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) collection|Not yet documented|
|[cancelMyRequest action](../api/intune-rbac-operationapprovalrequest-cancelmyrequest.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the Entity|
|requestDateTime|DateTimeOffset|The DateTime of the request. This property is read-only.|
|expirationDateTime|DateTimeOffset|The DateTime at which actions upon the request are no longer permitted. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|Last modified DateTime. This property is read-only.|
|requestor|[identitySet](../resources/intune-rbac-identityset.md)|The identity of the requestor. This property is read-only.|
|approver|[identitySet](../resources/intune-rbac-identityset.md)|The identity of the approver. This property is read-only.|
|status|[operationApprovalRequestStatus](../resources/intune-rbac-operationapprovalrequeststatus.md)|The current approval request status. This property is read-only. Possible values are: `unknown`, `needsApproval`, `approved`, `rejected`, `cancelled`, `completed`, `expired`, `unknownFutureValue`.|
|requestJustification|String|The request justification. This property is read-only.|
|approvalJustification|String|The justification for the approval of the request. This property is read-only.|
|operationApprovalPolicies|String|The operational approval policies used in the request. This property is read-only.|

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
  "operationApprovalPolicies": "String"
}
```
