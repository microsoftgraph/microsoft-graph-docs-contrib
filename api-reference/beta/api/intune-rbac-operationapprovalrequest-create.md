---
title: "Create operationApprovalRequest"
description: "Create a new operationApprovalRequest object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create operationApprovalRequest

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementRBAC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementRBAC.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/operationApprovalRequests
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the operationApprovalRequest object.

The following table shows the properties that are required when you create the operationApprovalRequest.

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



## Response
If successful, this method returns a `201 Created` response code and a [operationApprovalRequest](../resources/intune-rbac-operationapprovalrequest.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/operationApprovalRequests
Content-type: application/json
Content-length: 1415

{
  "@odata.type": "#microsoft.graph.operationApprovalRequest",
  "requestDateTime": "2017-01-01T00:03:07.1589002-08:00",
  "expirationDateTime": "2016-12-31T23:57:57.2481234-08:00",
  "requestor": {
    "@odata.type": "microsoft.graph.identitySet",
    "application": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    },
    "device": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    },
    "user": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    }
  },
  "approver": {
    "@odata.type": "microsoft.graph.identitySet",
    "application": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    },
    "device": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    },
    "user": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    }
  },
  "status": "needsApproval",
  "requestJustification": "Request Justification value",
  "approvalJustification": "Approval Justification value",
  "operationApprovalPolicies": "Operation Approval Policies value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1528

{
  "@odata.type": "#microsoft.graph.operationApprovalRequest",
  "id": "4e9eed82-ed82-4e9e-82ed-9e4e82ed9e4e",
  "requestDateTime": "2017-01-01T00:03:07.1589002-08:00",
  "expirationDateTime": "2016-12-31T23:57:57.2481234-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "requestor": {
    "@odata.type": "microsoft.graph.identitySet",
    "application": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    },
    "device": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    },
    "user": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    }
  },
  "approver": {
    "@odata.type": "microsoft.graph.identitySet",
    "application": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    },
    "device": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    },
    "user": {
      "@odata.type": "microsoft.graph.identity",
      "id": "Id value",
      "displayName": "Display Name value"
    }
  },
  "status": "needsApproval",
  "requestJustification": "Request Justification value",
  "approvalJustification": "Approval Justification value",
  "operationApprovalPolicies": "Operation Approval Policies value"
}
```
