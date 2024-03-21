---
title: "operationApprovalPolicySet resource type"
description: "Contains the pair of OperationApprovalPolicyType and OperationApprovalPolicyPlatform determining the set of applicable OperationApprovalPolicies for a user. The OperationApprovalPolicySet complex type is used to indicate to the UX which policies are enabled for the current logged in user in order to correctly show the expected experience."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# operationApprovalPolicySet resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the pair of OperationApprovalPolicyType and OperationApprovalPolicyPlatform determining the set of applicable OperationApprovalPolicies for a user. The OperationApprovalPolicySet complex type is used to indicate to the UX which policies are enabled for the current logged in user in order to correctly show the expected experience.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyType|[operationApprovalPolicyType](../resources/intune-rbac-operationapprovalpolicytype.md)|The policy type for the OperationApprovalPolicy. This property is required when the policy set is created, and uniquely identifies areas of the Intune UX that could support MAA when used in conjection with the `policyPlatform` property. Possible values are: `deviceAction`, `deviceWipe`, `deviceRetire`, `deviceRetireNonCompliant`, `deviceDelete`, `deviceLock`, `deviceErase`, `deviceDisableActivationLock`, `windowsEnrollment`, `compliancePolicy`, `configurationPolicy`, `appProtectionPolicy`, `policySet`, `filter`, `EndpointSecurityPolicy`, `app`, `script`, `role`, `deviceResetPasscode`, `customOrganizationalMessage`. Read-only. This property is read-only. Possible values are: `unknown`, `deviceAction`, `deviceWipe`, `deviceRetire`, `deviceRetireNonCompliant`, `deviceDelete`, `deviceLock`, `deviceErase`, `deviceDisableActivationLock`, `windowsEnrollment`, `compliancePolicy`, `configurationPolicy`, `appProtectionPolicy`, `policySet`, `filter`, `endpointSecurityPolicy`, `apps`, `script`, `role`, `deviceResetPasscode`, `customOrganizationalMessage`, `unknownFutureValue`.|
|policyPlatform|[operationApprovalPolicyPlatform](../resources/intune-rbac-operationapprovalpolicyplatform.md)|The applicable platform(s) for the OperationApprovalPolicy. This property is required when the policy set is created, and uniquely identifies the platform(s) that could support MAA when used in conjection with the `policyType` property. Possible values are: `notApplicable`, `androidDeviceAdministrator`, `androidEnterprise`, `iOSiPadOS`, `macOS`, `windows10AndLater`, `windows81AndLater`, `windows10X`. Read-only. This property is read-only. Possible values are: `notApplicable`, `androidDeviceAdministrator`, `androidEnterprise`, `iOSiPadOS`, `macOS`, `windows10AndLater`, `windows81AndLater`, `windows10X`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.operationApprovalPolicySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.operationApprovalPolicySet",
  "policyType": "String",
  "policyPlatform": "String"
}
```
