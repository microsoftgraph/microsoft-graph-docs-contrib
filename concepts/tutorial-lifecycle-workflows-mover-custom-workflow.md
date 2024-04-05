---
title: "Automate employee mover tasks when they change jobs using Lifecycle Workflows APIs"
description: "Learn how to automate employee mover tasks when they change jobs using lifecycle workflows APIs in Microsoft Graph."
author: owinfreyATL
ms.author: owinfrey
ms.reviewer: Alexander.Filipin
ms.topic: tutorial
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
ms.date: 03/26/2024
#Customer intent: As a developer integrating with Microsoft Graph, I want to use lifecycle workflows APIs to automate employee mover tasks, so that I can ensure proper security, efficient lifecycle management, and compliance in my organization.
---

# Automate employee mover tasks when they change jobs using Lifecycle Workflows APIs

This tutorial provides step-by-step guidance for automating mover tasks with Lifecycle Workflows APIs.

:::image type="content" source="images/tutorial-lifecycle-workflows/arch-2.png" alt-text="Screenshot of the Lifecycle Workflows scenario." lightbox="images/tutorial-lifecycle-workflows/arch-2.png":::

In this tutorial, you learn how to:

> [!div class="checklist"]
> * Configure a lifecycle workflow to check for employees who are moved from a department.
> * Configure a task to notify the manager of the user who was moved via email.
> * Monitor the status of the workflow and its associated tasks.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ This feature requires Microsoft Entra ID Governance licenses. To find the right license for your requirements, see [Microsoft Entra ID Governance licensing fundamentals](/entra/id-governance/licensing-fundamentals).
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) to call Microsoft Graph with account that has at least the *lifecycle administrator* Microsoft Entra role.
+ Grant yourself the *LifecycleWorkflows.ReadWrite.All* Microsoft Graph delegated permission.
+ Create two user accounts to use in this tutorial: one for the employee and another for their manager and have the following settings configured as applicable.

    | User property | Description |Set on|
    |:--- |:---|:-----|
    |mail|Used to notify the manager that the employee was moved to the department. Both the manager and employee should have active mailboxes to receive emails.|Employee, Manager|
    |manager|This attribute is used by the workflow task.|Employee|
    |Department|Used to provide the scope for the workflow. Set to `Sales`.|Employee, Manager|

## Create a "mover" workflow

### Request

The following request creates a mover workflow with the following settings:

+ It rns on schedule, but also can be run on demand
+ The workflow runs when an employee is removed from the **sales** department.
+ Only one built-in task runs in this workflow: to send an email to the employee's manager notifying them of the move. This task is identified in lifecycle workflows by the **taskDefinitionId** `aab41899-9972-422a-9d97-f626014578b7`.



<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_create_workflow"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows
Content-type: application/json

{
    "category": "mover",
    "description": "Configure mover tasks for a user when their job profile changes",
    "displayName": "Sales contractor moves to full time employee",
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

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workflow"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
    "category": "mover",
    "description": "Configure mover tasks for a user when their job profile changes",
    "displayName": "Sales contractor moves to full time employee",
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

## Run the workflow

Now that the workflow is created, remove the user you want to test the workflow on from the sales department. After 30 minutes you can check to see if the user is queued to have the workflow run for them by checking the execution scope of your workflow. To see if a user is queued to have the workflow run for them, you would check execution scope by doing the following:

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_scope_workflow"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/2bb05c85-556a-429a-8c16-16f6be5ef880/executionScope

```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workflow"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.identityGovernance.userProcessingResult)",
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

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_list_userProcessingResults"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/2bb05c85-556a-429a-8c16-16f6be5ef880/userProcessingResults
```

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userProcessingResult"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('2bb05c85-556a-429a-8c16-16f6be5ef880')/userProcessingResults",
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

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_list_userProcessingResults.summary"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/2bb05c85-556a-429a-8c16-16f6be5ef880/userProcessingResults/summary(startDateTime=2024-03-01T00:00:00Z,endDateTime=2024-03-30T00:00:00Z)
```

---

#### Response

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
- [Overview of reporting in Microsoft Entra Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-reporting-overview)

