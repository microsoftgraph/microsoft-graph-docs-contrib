---
title: "operationApprovalPolicy resource type"
description: "Operation Approval Policy"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# operationApprovalPolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Operation Approval Policy

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List operationApprovalPolicies](../api/intune-rbac-operationapprovalpolicy-list.md)|[operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) collection|List properties and relationships of the [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) objects.|
|[Get operationApprovalPolicy](../api/intune-rbac-operationapprovalpolicy-get.md)|[operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md)|Read properties and relationships of the [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object.|
|[Create operationApprovalPolicy](../api/intune-rbac-operationapprovalpolicy-create.md)|[operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md)|Create a new [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object.|
|[Delete operationApprovalPolicy](../api/intune-rbac-operationapprovalpolicy-delete.md)|None|Deletes a [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md).|
|[Update operationApprovalPolicy](../api/intune-rbac-operationapprovalpolicy-update.md)|[operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md)|Update the properties of a [operationApprovalPolicy](../resources/intune-rbac-operationapprovalpolicy.md) object.|
|[getApprovableOperations function](../api/intune-rbac-operationapprovalpolicy-getapprovableoperations.md)|[operationApprovalPolicySet](../resources/intune-rbac-operationapprovalpolicyset.md) collection|Not yet documented|
|[getOperationsRequiringApproval function](../api/intune-rbac-operationapprovalpolicy-getoperationsrequiringapproval.md)|[operationApprovalPolicySet](../resources/intune-rbac-operationapprovalpolicyset.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the OperationApprovalPolicy. This property is read-only.|
|displayName|String|The display name of this OperationApprovalPolicy|
|description|String|The description of this OperationApprovalPolicy|
|lastModifiedDateTime|DateTimeOffset|The last modified date and time of this OperationApprovalPolicy. This property is read-only.|
|policyType|[operationApprovalPolicyType](../resources/intune-rbac-operationapprovalpolicytype.md)|The policy type for this OperationApprovalPolicy. Possible values are: `deviceActions`, `deviceWipe`, `deviceRetire`, `deviceRetireNonCompliant`, `deviceDelete`, `deviceLock`, `deviceErase`, `deviceDisableActivationLock`, `windowsEnrollment`, `compliancePolicies`, `configurationPolicies`, `appProtectionPolicies`, `policySets`, `filters`, `endpointSecurity`, `apps`, `scripts`, `roles`, `deviceResetPasscode`, `unknownFutureValue`.|
|approverGroupIds|String collection|The group IDs for the approvers for this OperationApprovalPolicy|

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
  "approverGroupIds": [
    "String"
  ]
}
```
