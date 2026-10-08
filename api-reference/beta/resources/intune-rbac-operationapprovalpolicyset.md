---
title: "operationApprovalPolicySet resource type"
description: "Contains the pair of OperationApprovalPolicyType and OperationApprovalPolicyPlatform determining the set of applicable OperationApprovalPolicies for a user. The OperationApprovalPolicySet complex type is used to indicate to the UX which policies are enabled for the current logged in user in order to correctly show the expected experience."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# operationApprovalPolicySet resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the pair of OperationApprovalPolicyType and OperationApprovalPolicyPlatform determining the set of applicable OperationApprovalPolicies for a user. The OperationApprovalPolicySet complex type is used to indicate to the UX which policies are enabled for the current logged in user in order to correctly show the expected experience.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyType|[operationApprovalPolicyType](../resources/intune-rbac-operationapprovalpolicytype.md)|The policy type for the OperationApprovalPolicy. This property is required when the policy set is created, and uniquely identifies areas of the Intune UX that could support MAA when used in conjection with the `policyPlatform` property. Possible values are: `unknown`, `app`, `script`, `operationApprovalPolicy`. Read-only. This property is read-only. Possible values are: `unknown`, `deviceAction`, `deviceWipe`, `deviceRetire`, `deviceRetireNonCompliant`, `deviceDelete`, `deviceLock`, `deviceErase`, `deviceDisableActivationLock`, `windowsEnrollment`, `compliancePolicy`, `configurationPolicy`, `appProtectionPolicy`, `policySet`, `filter`, `endpointSecurityPolicy`, `app`, `script`, `role`, `deviceResetPasscode`, `unknownFutureValue`, `operationApprovalPolicy`, `autopilot`, `windows365`, `deviceEnrollment`, `deviceUpdate`, `enrollmentRestriction`, `tenantConfiguration`, `tunnel`, `endpointPrivilegeManagement`, `deviceSecurityAction`.|
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