---
title: "Identity governance enum values"
description: "Microsoft Graph identity governance enumeration values"
doc_type: enumPageType
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
author: "AlexFilipin"
ms.date: 08/12/2026
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

### agentBuilderPlatforms values

|Member|
|:---|
|microsoftCopilotStudio|
|foundry|
|unknownFutureValue|

### complianceState values

|Member|
|:---|
|compliant|
|warning|
|warningNotify|
|nonCompliant|
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

### lifecyclePolicyComplianceStatus values

|Member|
|:---|
|notEvaluated|
|compliant|
|nonCompliant|
|unknownFutureValue|

### lifecyclePolicyEnforcementActionState values

|Member|
|:---|
|none|
|warningStateEnabled|
|nonComplianceNotificationSent|
|firstNotificationSent|
|secondNotificationSent|
|finalNotificationSent|
|disabled|
|deleted|
|complianceRestored|
|unknownFutureValue|

### lifecyclePolicyEnforcementStatus values

|Member|
|:---|
|notRequired|
|notStarted|
|processing|
|waiting|
|actionDue|
|complete|
|unknown|
|unknownFutureValue|

### lifecyclePolicyImpactActionType values

|Member|
|:---|
|objectCoveredByPolicy|
|attestationNeededWarning|
|attestationNeededNotificationSent|
|disabledDueToAttestationNonCompliance|
|deletedDueToAttestationNonCompliance|
|unknownFutureValue|

### lifecyclePolicyNextEnforcementAction values

|Member|
|:---|
|nonComplianceNotification|
|firstNotification|
|secondNotification|
|finalNotification|
|disable|
|disableNotification|
|delete|
|unknownFutureValue|

### lifecyclePolicyRelationship values

|Member|
|:---|
|effective|
|inScopeButIneffective|
|pending|
|unknownFutureValue|

### lifecyclePolicyScopeProcessingAttemptStatus values

|Member|
|:---|
|notStarted|
|evaluating|
|processing|
|completed|
|failed|
|timedOut|
|invalidScope|
|unknownFutureValue|

### lifecyclePolicyScopeProcessingStatus values

|Member|
|:---|
|idle|
|notStarted|
|evaluating|
|processing|
|unknownFutureValue|

### lifecyclePolicySource values

|Member|
|:---|
|userCreated|
|systemDefault|
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

### subjectType values

|Member|
|:---|
|user|
|agentIdentity|
|unknownFutureValue|
|provisioningObject|

### workflowTriggerOperatorEventTiming values

|Member|
|:---|
|before|
|after|
|on|
|unknownFutureValue|

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.identityGovernance"
}
-->
