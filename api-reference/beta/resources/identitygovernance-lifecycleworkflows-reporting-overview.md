---
title: "Lifecycle Workflow reporting"
description: "You can use Lifecycle Workflows reporting features to gain information about the lifecycle of users. This documentation serves the 2nd version of the APIs."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Lifecycle Workflow reporting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lifecycle Workflows offers reports that enable organizations to gain insight into how lifecycle workflows were processed for users in your organization.

Note that the Lifecycle Workflows feature, including the API, is included in Azure AD Premium P2.  The tenant where Lifecycle Workflows are being created must have a valid purchased, or trial, Azure AD Premium P2 or EMS E5 subscription. For more information about the license requirements, see [Lifecycle Workflows license requirements](/azure/active-directory/governance/what-are-lifecycle-workflows.md#license-requirements).

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Role and application permission authorization checks

The following [Azure AD roles](/azure/active-directory/roles/permissions-reference) are required for a calling user to gain  Lifecycle Workflows.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | LifecycleWorkflows.Read.All or LifecycleWorkflows.ReadWrite.All | Global Admin, Global Reader or Lifecycle Workflows Administrator |
| Create, Update or Delete | LifecycleWorkflows.ReadWrite.All | Global Administrator or Lifecycle Workflows Administrator |

## Key elements of Lifecycle Workflows reports

|Element  |Description  |
|---------|---------|
|[Task processing result](identitygovernance-taskprocessingresult.md)     |Result of a [workflow task](../resources/identitygovernance-task.md) that was executed for a specific user because the workflow task was part of the [lifecycle workflow](../resources/identitygovernance-workflow.md) for which the user fulfilled the [execution conditions](../resources/identitygovernance-workflowexecutionconditions.md).        |
|[User processing result](identitygovernance-userprocessingresult.md)    |Result of a [lifecycle workflow](../resources/identitygovernance-workflow.md) that was executed for a specific user because the user fulfilled the [execution conditions](../resources/identitygovernance-workflowexecutionconditions.md) of the lifecycle workflow. The result is an aggregation of all [task processing result](../resources/identitygovernance-taskprocessingresult.md) of the [workflow tasks](../resources/identitygovernance-task.md) that were part of the lifecycle workflow and executed for the specific user.        |
|[Workflow run](identitygovernance-run.md)    |Result of a [lifecycle workflow](../resources/identitygovernance-workflow.md) that was executed for a collection of users because they fulfilled the [execution conditions](../resources/identitygovernance-workflowexecutionconditions.md) of the lifecycle workflow. The result is an aggregation of all [user processing results](../resources/identitygovernance-userprocessingresult.md) of the users that were either processed within an [interval](../resources/identitygovernance-lifecyclemanagementsettings.md#properties) or were part of an [on-demand execution](../api/identitygovernance-workflow-activate.md).        |
|[Task report](identitygovernance-taskreport.md)    |An aggregation of [task processing results](../resources/identitygovernance-taskprocessingresult.md) for a specific [workflow task](../resources/identitygovernance-task.md) within a [workflow run](../resources/identitygovernance-run.md). With this report, the health status of a workflow task within a workflow run can be easily determined and thus the source of error can be identified more quickly should a workflow run not have been completed successfully.         |

<!--
{
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
