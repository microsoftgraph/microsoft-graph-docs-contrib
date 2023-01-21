---
title: "Create operationApprovalPolicy"
description: "Create a new operationApprovalPolicy object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create operationApprovalPolicy

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object.

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
POST /deviceManagement/operationApprovalPolicies
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the operationApprovalPolicy object.

The following table shows the properties that are required when you create the operationApprovalPolicy.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the OperationApprovalPolicy. This property is read-only.|
|displayName|String|The display name of this OperationApprovalPolicy|
|description|String|The description of this OperationApprovalPolicy|
|lastModifiedDateTime|DateTimeOffset|The last modified date and time of this OperationApprovalPolicy. This property is read-only.|
|policyType|[operationApprovalPolicyType](../resources/intune-rbac-operationapprovalpolicytype.md)|The policy type for this OperationApprovalPolicy. Possible values are: `deviceActions`, `deviceWipe`, `deviceRetire`, `deviceRetireNonCompliant`, `deviceDelete`, `deviceLock`, `deviceErase`, `deviceDisableActivationLock`, `windowsEnrollment`, `compliancePolicies`, `configurationPolicies`, `appProtectionPolicies`, `policySets`, `filters`, `endpointSecurity`, `apps`, `scripts`, `roles`, `deviceResetPasscode`, `unknownFutureValue`.|
|approverGroupIds|String collection|The group IDs for the approvers for this OperationApprovalPolicy|



## Response
If successful, this method returns a `201 Created` response code and a [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/operationApprovalPolicies
Content-type: application/json
Content-length: 238

{
  "@odata.type": "#microsoft.graph.operationApprovalPolicy",
  "displayName": "Display Name value",
  "description": "Description value",
  "policyType": "deviceWipe",
  "approverGroupIds": [
    "Approver Group Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 351

{
  "@odata.type": "#microsoft.graph.operationApprovalPolicy",
  "id": "9d2caa5f-aa5f-9d2c-5faa-2c9d5faa2c9d",
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "policyType": "deviceWipe",
  "approverGroupIds": [
    "Approver Group Ids value"
  ]
}
```
