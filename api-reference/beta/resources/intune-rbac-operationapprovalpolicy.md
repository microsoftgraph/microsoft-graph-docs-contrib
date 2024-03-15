---
title: "operationApprovalPolicy resource type"
description: "The OperationApprovalPolicy entity allows an administrator to configure which operations require admin approval and the set of admins who can perform that approval. Creating a policy enables the multiple admin approval service to catch requests which are targeted by the specific policy type defined."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# operationApprovalPolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The OperationApprovalPolicy entity allows an administrator to configure which operations require admin approval and the set of admins who can perform that approval. Creating a policy enables the multiple admin approval service to catch requests which are targeted by the specific policy type defined.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List operationApprovalPolicies](../api/intune-rbac-operationapprovalpolicy-list.md)|[operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) collection|List properties and relationships of the [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) objects.|
|[Get operationApprovalPolicy](../api/intune-rbac-operationapprovalpolicy-get.md)|[operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md)|Read properties and relationships of the [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object.|
|[Create operationApprovalPolicy](../api/intune-rbac-operationapprovalpolicy-create.md)|[operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md)|Create a new [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object.|
|[Delete operationApprovalPolicy](../api/intune-rbac-operationapprovalpolicy-delete.md)|None|Deletes a [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md).|
|[Update operationApprovalPolicy](../api/intune-rbac-operationapprovalpolicy-update.md)|[operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md)|Update the properties of a [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object.|
|[getApprovableOperations function](../api/intune-rbac-operationapprovalpolicy-getapprovableoperations.md)|[operationApprovalPolicySet](../resources/intune-rbac-operationapprovalpolicyset.md) collection||
|[getOperationsRequiringApproval function](../api/intune-rbac-operationapprovalpolicy-getoperationsrequiringapproval.md)|[operationApprovalPolicySet](../resources/intune-rbac-operationapprovalpolicyset.md) collection||
|[retrieveApprovableOperations function](../api/intune-rbac-operationapprovalpolicy-retrieveapprovableoperations.md)|[operationApprovalPolicySet](../resources/intune-rbac-operationapprovalpolicyset.md) collection||
|[retrieveOperationsRequiringApproval function](../api/intune-rbac-operationapprovalpolicy-retrieveoperationsrequiringapproval.md)|[operationApprovalPolicySet](../resources/intune-rbac-operationapprovalpolicyset.md) collection||

## Properties
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

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.operationApprovalPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.operationApprovalPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "policyType": "String",
  "policyPlatform": "String",
  "policySet": {
    "@odata.type": "microsoft.graph.operationApprovalPolicySet",
    "policyType": "String",
    "policyPlatform": "String"
  },
  "approverGroupIds": [
    "String"
  ]
}
```
