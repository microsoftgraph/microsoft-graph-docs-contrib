---
title: "lifecycleWorkflowProcessingStatus enum type"
description: "Microsoft Graph identityGovernance lifecycleWorkflowProcessingStatus enumeration type"
author: "AlexFilipin"
ms.date: 03/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: enumPageType
---

# lifecycleWorkflowProcessingStatus enum type

Namespace: microsoft.graph.identityGovernance

Describes the execution status of a lifecycle workflow. This enum is used by the **processingStatus** property of the following resources:

- [run](../resources/identitygovernance-run.md)
- [task processing result](../resources/identitygovernance-taskprocessingresult.md)
- [task report](../resources/identitygovernance-taskreport.md)
- [user processing result](../resources/identitygovernance-userprocessingresult.md)
- [subject processing result](../resources/identitygovernance-subjectprocessingresult.md)
- [awaited workflow processing result](../resources/identitygovernance-awaitedworkflowprocessingresult.md)

## lifecycleWorkflowProcessingStatus values

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this evolvable enum: `canceling`, `quarantined`.

|Member|
|:---|
|queued|
|inProgress|
|completed|
|completedWithErrors|
|canceled|
|failed|
|unknownFutureValue|
|canceling|
|quarantined|

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.identityGovernance"
}
-->
