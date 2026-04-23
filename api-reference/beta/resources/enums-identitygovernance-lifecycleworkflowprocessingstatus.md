---
title: "lifecycleWorkflowProcessingStatus enum type"
description: "Microsoft Graph identityGovernance lifecycleWorkflowProcessingStatus enumeration type"
author: "owinfreyATL"
ms.date: 03/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: enumPageType
---

# lifecycleWorkflowProcessingStatus enum type

Namespace: microsoft.graph.identityGovernance

Describes the execution status of a lifecycle workflow run, task processing result, task report, or user processing result.

## lifecycleWorkflowProcessingStatus values

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this evolvable enum: `canceling`.

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

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.identityGovernance"
}
-->
