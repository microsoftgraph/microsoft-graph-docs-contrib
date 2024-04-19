---
title: "Create operationApprovalPolicy"
description: "Create a new operationApprovalPolicy object."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: apiPageType
---

# Create operationApprovalPolicy

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the operationApprovalPolicy object.

The following table shows the properties that are required when you create the operationApprovalPolicy.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the policy. This ID is assigned at when the policy is created. Read-only. This property is read-only.|
|displayName|String|Indicates the display name of the policy. Maximum length of the display name is 128 characters. This property is required when the policy is created, and is defined by the user to identify the policy.|
|description|String|Indicates the description of the policy. Maximum length of the description is 1024 characters. This property is not required, but can be used by the user to describe the policy.|
|lastModifiedDateTime|DateTimeOffset|Indicates the last DateTime that the policy was modified. The value cannot be modified and is automatically populated whenever values in the request are updated. For example, when the 'policyType' property changes from `apps` to `scripts`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.|
|policyType|[operationApprovalPolicyType](../resources/intune-rbac-operationapprovalpolicytype.md)|Indicates the policy type for the policy. Possible values are: `deviceAction`, `deviceWipe`, `deviceRetire`, `deviceRetireNonCompliant`, `deviceDelete`, `deviceLock`, `deviceErase`, `deviceDisableActivationLock`, `windowsEnrollment`, `compliancePolicy`, `configurationPolicy`, `appProtectionPolicy`, `policySet`, `filter`, `EndpointSecurityPolicy`, `app`, `script`, `role`, `deviceResetPasscode`, `customOrganizationalMessage`. Possible values are: `unknown`, `deviceAction`, `deviceWipe`, `deviceRetire`, `deviceRetireNonCompliant`, `deviceDelete`, `deviceLock`, `deviceErase`, `deviceDisableActivationLock`, `windowsEnrollment`, `compliancePolicy`, `configurationPolicy`, `appProtectionPolicy`, `policySet`, `filter`, `endpointSecurityPolicy`, `apps`, `script`, `role`, `deviceResetPasscode`, `customOrganizationalMessage`, `unknownFutureValue`.|
|policyPlatform|[operationApprovalPolicyPlatform](../resources/intune-rbac-operationapprovalpolicyplatform.md)|Indicates the applicable platform for the policy. Possible values are: `notApplicable`, `androidDeviceAdministrator`, `androidEnterprise`, `iOSiPadOS`, `macOS`, `windows10AndLater`, `windows81AndLater`, `windows10X`. Default value is `notApplicable`. Possible values are: `notApplicable`, `androidDeviceAdministrator`, `androidEnterprise`, `iOSiPadOS`, `macOS`, `windows10AndLater`, `windows81AndLater`, `windows10X`, `unknownFutureValue`.|
|policySet|[operationApprovalPolicySet](../resources/intune-rbac-operationapprovalpolicyset.md)|Indicates areas of the Intune UX that could support MAA UX for the current logged in user. This property is required, and is defined by the user in order to correctly show the expected experience.|
|approverGroupIds|String collection|The Microsoft Entra ID (Azure AD) security group IDs for the approvers for the policy. This property is required when the policy is created, and is defined by the user to define the possible approvers for the policy.|



## Response
If successful, this method returns a `201 Created` response code and a [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/operationApprovalPolicies
Content-type: application/json
Content-length: 468

{
  "@odata.type": "#microsoft.graph.operationApprovalPolicy",
  "displayName": "Display Name value",
  "description": "Description value",
  "policyType": "deviceAction",
  "policyPlatform": "androidDeviceAdministrator",
  "policySet": {
    "@odata.type": "microsoft.graph.operationApprovalPolicySet",
    "policyType": "deviceAction",
    "policyPlatform": "androidDeviceAdministrator"
  },
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
Content-Length: 581

{
  "@odata.type": "#microsoft.graph.operationApprovalPolicy",
  "id": "9d2caa5f-aa5f-9d2c-5faa-2c9d5faa2c9d",
  "displayName": "Display Name value",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "policyType": "deviceAction",
  "policyPlatform": "androidDeviceAdministrator",
  "policySet": {
    "@odata.type": "microsoft.graph.operationApprovalPolicySet",
    "policyType": "deviceAction",
    "policyPlatform": "androidDeviceAdministrator"
  },
  "approverGroupIds": [
    "Approver Group Ids value"
  ]
}
```