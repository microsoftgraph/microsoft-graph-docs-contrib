---
title: "Identity governance enum values"
description: "Microsoft Graph identity governance enumeration values"
doc_type: enumPageType
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
author: "AlexFilipin"
ms.date: 04/02/2024
---

# Identity governance enum values

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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

### customDataProvidedResourceUploadStatus values

|Member|
|:---|
|active|
|complete|
|expired|
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

|Member|
|:---|
|user|
|agentIdentity|
|unknownFutureValue|
|provisioningObject|

### workflowExecutionType values 



|Member|
|:---|
|scheduled|
|onDemand|
|activatedWithScope|
|extensibilityOnDemand|
|unknownFutureValue|


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

### principalType values

|Member|
|:---|
|user|
|group|
|servicePrincipal|
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
