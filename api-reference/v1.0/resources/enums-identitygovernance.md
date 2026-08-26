---
title: "Identity governance enum values"
description: "Microsoft Graph identity governance enumeration values"
doc_type: enumPageType
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
author: "AlexFilipin"
ms.date: 08/01/2024
---

# Identity governance enum values

Namespace: microsoft.graph.identityGovernance

### activationTaskScopeType values 

|Member|
|:---|
|allTasks|
|failedTasks|
|unknownFutureValue|

### activationUserScopeType values 

|Member|
|:---|
|allUsers|
|failedUsers|
|unknownFutureValue|

### customTaskExtensionOperationStatus values 

|Member|
|:---|
|completed|
|failed|
|unknownFutureValue|

### customTaskExtensionReplyMode values

|Member|
|:---|
|none|
|callback|
|response|
|unknownFutureValue|

### lifecycleTaskCategory values 



|Member|
|:---|
|joiner|
|leaver|
|unknownFutureValue|
|mover|
|extensibility|

### lifecycleWorkflowCategory values 



|Member|
|:---|
|joiner|
|leaver|
|unknownFutureValue|
|mover|
|extensibility|

### valueType values 



|Member|
|:---|
|enum|
|string|
|int|
|bool|
|unknownFutureValue|


### subjectType values

The **subjectType** enumeration is an evolvable enumeration marked with the `IsFlags` attribute. Use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `provisioningObject`.

|Member|
|:---|
|user|
|unknownFutureValue|
|provisioningObject|

### workflowExecutionType values 



|Member|
|:---|
|scheduled|
|onDemand|
|unknownFutureValue|
|activatedWithScope|
|preview|
|extensibilityOnDemand|


### workflowTriggerTimeBasedAttribute values 



|Member|
|:---|
|employeeHireDate|
|employeeLeaveDateTime|
|unknownFutureValue|

### membershipChangeType values



|Member|
|:---|
|add|
|remove|
|unknownFutureValue|

### matchMode values



|Member|
|:---|
|any|
|all|
|unknownFutureValue|

### quarantineType values



|Member|
|:---|
|notQuarantined|
|countBasedThresholdExceeded|
|percentageBasedThresholdExceeded|
|multipleConditionsExceeded|
|unknownFutureValue|



<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.identityGovernance"
}
-->
