---
title: "Automate mover tasks when employees change jobs by using the Microsoft Graph lifecycle workflows APIs"
description: "Follow the steps in this tutorial to create a mover workflow to automate tasks when employees change jobs."
author: owinfreyATL
ms.author: owinfrey
ms.reviewer: Alexander.Filipin
ms.topic: tutorial
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.date: 08/29/2024
#Customer intent: As a developer integrating with Microsoft Graph, I want to use lifecycle workflows APIs to automate employee mover tasks, so that I can ensure proper security, efficient lifecycle management, and compliance in my organization.
---

# Automate mover tasks when employees change jobs by using the Microsoft Graph lifecycle workflows APIs

This tutorial offers step-by-step guidance for automating employee mover tasks by using lifecycle workflows APIs in Microsoft Graph.

:::image type="content" source="images/tutorial-lifecycle-workflows/arch-2.png" alt-text="Screenshot of the Lifecycle Workflows scenario." lightbox="images/tutorial-lifecycle-workflows/arch-2.png":::

In this tutorial, you learn how to:

> [!div class="checklist"]
> * Configure a lifecycle workflow to check for employees moving into a new department.
> * Configure a task to notify the manager of the users moved via email.
> * Monitor the status of the workflow and its associated tasks.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ This feature requires Microsoft Entra ID Governance licenses. To find the right license for your requirements, see [Microsoft Entra ID Governance licensing fundamentals](/entra/id-governance/licensing-fundamentals).
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) to call Microsoft Graph with account that has at least the *lifecycle administrator* Microsoft Entra role.
+ Grant yourself the *LifecycleWorkflows.ReadWrite.All* Microsoft Graph delegated permission.
+ Create two user accounts to use in this tutorial: one for the employee and another for their manager and have the following settings configured as applicable.

    | User property | Description |Set on|
    |:--- |:---|:-----|
    |mail|Notifies the manager that the employee was moved to the department. Both the manager and employee should have active mailboxes to receive emails.|Employee, Manager|
    |manager|This attribute is used by the workflow task.|Employee|

## Create a mover workflow

### Request

The following request creates a mover workflow with the following settings:

+ It runs on schedule but also can be run on demand.
+ The workflow runs when an employee is added to the **Sales** department.
+ Only one built-in task runs in this workflow: to send an email to the employee's manager notifying them of the move. This task is identified in lifecycle workflows by the **taskDefinitionId** `aab41899-9972-422a-9d97-f626014578b7`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_create_workflow"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-type: application/json

{
    "category": "mover",
    "description": "Configure mover tasks for a user moved to the Sales department.",
    "displayName": "Added to Sales department workflow",
    "isEnabled": true,
    "isSchedulingEnabled": true,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(department eq 'Sales')"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.attributeChangeTrigger",
            "triggerAttributes": [
                {
                    "name": "department"
                }
            ]
        }
    },
    "tasks": [
        {
            "continueOnError": false,
            "description": "Send email to moving employee's manager",
            "displayName": "Notify manager of move",
            "isEnabled": true,
            "taskDefinitionId": "aab41899-9972-422a-9d97-f626014578b7",
            "arguments": []
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-mover-create-workflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-mover-create-workflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-mover-create-workflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-mover-create-workflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-mover-create-workflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-mover-create-workflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-mover-create-workflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-mover-create-workflow-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workflow"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
    "category": "mover",
    "description": "Configure mover tasks for a user moved to the Sales department.",
    "displayName": "Added to Sales department workflow",
    "isEnabled": true,
    "isSchedulingEnabled": true,
    "lastModifiedDateTime": "2024-03-28T12:46:10.0505943Z",
    "createdDateTime": "2024-03-28T12:46:10.0505809Z",
    "deletedDateTime": null,
    "id": "2bb05c85-556a-429a-8c16-16f6be5ef880",
    "nextScheduleRunDateTime": "2024-03-28T13:37:08Z",
    "version": 1,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(department eq 'Sales')"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.attributeChangeTrigger",
            "triggerAttributes": [
                {
                    "name": "department"
                }
            ]
        }
    }
}
```

## Check scope of workflow

Now that the workflow is created, take note of your workflow ID, and then add the user you want to test the workflow on to the *Sales* department. After 15-30 minutes, you can determine whether the user is queued to have the workflow run for them by checking the execution scope of your workflow. To determine whether a user is queued to have the workflow run for them, use the following request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_scope_workflow"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/2bb05c85-556a-429a-8c16-16f6be5ef880/executionScope

```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-mover-scope-workflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workflow"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.identityGovernance.userProcessingResult)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/lifecycleWorkflows/workflows('<guid>')/executionScope?$select=completedDateTime,failedTasksCount",
    "value": [
        {
            "id": "2bb05c85-556a-429a-8c16-16f6be5ef880_1_2bb05c85-556a-429a-8c16-16f6be5ef880_638472334281668424_6324d383-5034-49dc-a62d-30d61e01b613",
            "completedDateTime": null,
            "failedTasksCount": 0,
            "processingStatus": "queued",
            "scheduledDateTime": "2024-03-28T14:37:08.1668424Z",
            "startedDateTime": null,
            "totalTasksCount": 1,
            "totalUnprocessedTasksCount": 1,
            "workflowExecutionType": "scheduled",
            "workflowVersion": 1,
            "subject": {
                "id": "6324d383-5034-49dc-a62d-30d61e01b613"
            }
        }
    ]
}
```

## Check tasks and workflow status

At any time, you can monitor the status of the workflows and their associated tasks at three levels.
- Monitor tasks at the user level.
- Monitor the aggregate high-level summary of the user-level results for a workflow, within a specified period.
- Retrieve the detailed log of all tasks that were executed for a specific user in the workflow.

### Option 1: Monitor tasks for a workflow at the user level

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_list_userProcessingResults"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/2bb05c85-556a-429a-8c16-16f6be5ef880/userProcessingResults
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresults-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresults-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresults-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresults-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresults-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresults-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresults-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresults-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userProcessingResult"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows('2bb05c85-556a-429a-8c16-16f6be5ef880')/userProcessingResults",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/lifecycleWorkflows/workflows('<guid>')/userProcessingResults?$select=completedDateTime,failedTasksCount",
    "value": [
        {
            "id": "2bb05c85-556a-429a-8c16-16f6be5ef880_1_2bb05c85-556a-429a-8c16-16f6be5ef880_638470955486351520_6324d383-5034-49dc-a62d-30d61e01b613",
            "completedDateTime": "2024-03-27T00:19:22.5753749Z",
            "failedTasksCount": 1,
            "processingStatus": "completedWithErrors",
            "scheduledDateTime": "2024-03-27T00:19:08.635152Z",
            "startedDateTime": "2024-03-27T00:19:17.1696067Z",
            "totalTasksCount": 1,
            "totalUnprocessedTasksCount": 0,
            "workflowExecutionType": "onDemand",
            "workflowVersion": 1,
            "subject": {
                "id": "6324d383-5034-49dc-a62d-30d61e01b613"
            }
        }
    ]
}
```

### Option 2: Get the aggregate high-level summary of the user-level results for a workflow, within a specified period

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_list_userProcessingResults.summary"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/2bb05c85-556a-429a-8c16-16f6be5ef880/userProcessingResults/summary(startDateTime=2024-03-01T00:00:00Z,endDateTime=2024-03-30T00:00:00Z)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresultssummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresultssummary-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresultssummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresultssummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresultssummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresultssummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresultssummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-mover-list-userprocessingresultssummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userSummary"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.identityGovernance.userSummary",
    "failedTasks": 2,
    "failedUsers": 2,
    "successfulUsers": 10,
    "totalTasks": 12,
    "totalUsers": 12
}
```

## Related content

- [Automate employee onboarding tasks before their first day of work by using the Microsoft Entra admin center](/azure/active-directory/governance/tutorial-onboard-custom-workflow-portal).
- [Overview of Microsoft Entra lifecycle workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview).
- [Overview of reporting in Microsoft Entra lifecycle workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-reporting-overview)
