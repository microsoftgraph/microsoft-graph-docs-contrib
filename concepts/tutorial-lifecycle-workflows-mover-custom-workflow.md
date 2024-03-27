---
title: "Automate employee mover tasks when they change jobs using Lifecycle Workflows APIs"
description: "Learn how to automate employee mover tasks when they change jobs using Lifecycle Workflows APIs in Microsoft Graph."
author: owinfreyATL
ms.author: owinfrey
ms.reviewer: Alexander.Filipin
ms.topic: tutorial
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
ms.date: 03/26/2024
#Customer intent: As a developer integrating with Microsoft Graph, I want to use Lifecycle Workflows APIs to automate employee mover tasks, so that I can ensure proper security, efficient lifecycle management, and compliance in my organization.
---

# Automate employee mover tasks when they change jobs using Lifecycle Workflows APIs

This tutorial provides step-by-step guidance for automating mover tasks with Lifecycle Workflows APIs.

:::image type="content" source="images/tutorial-lifecycle-workflows/arch-2.png" alt-text="Screenshot of the Lifecycle Workflows scenario." lightbox="images/tutorial-lifecycle-workflows/arch-2.png":::

In this tutorial, you learn how to:

> [!div class="checklist"]
> * Configure a lifecycle workflow to check for employees who were removed from a group.
> * Configure a task to notify the manager of the user who was removed from the group via email.
> * Monitor the status of the workflow and its associated tasks.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ This feature requires Microsoft Entra ID Governance licenses. To find the right license for your requirements, see [Microsoft Entra ID Governance licensing fundamentals](/entra/id-governance/licensing-fundamentals).
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) to call Microsoft Graph with account that has at least the *Lifecycle Administrator* Microsoft Entra role.
+ Grant yourself the *LifecycleWorkflows.ReadWrite.All* Microsoft Graph delegated permission.
+ Create two user accounts to use in this tutorial: one for the employee and another for their manager and have the following settings configured as applicable.

    | User property | Description |Set on|
    |:--- |:---|:-----|
    |mail|Used to notify the manager that the employee was removed from the group. Both the manager and employee should have active mailboxes to receive emails.|Employee, Manager|
    |manager|This attribute is used by the workflow task.|Employee|
    |Group|Used to provide the scope for the workflow. Set to `Sales`.|Employee, Manager|

## Create a "mover" workflow

### Request

The following request creates a mover workflow with the following settings:

+ It can be run on-demand but not on schedule.
+ The workflow runs when an employee is removed from the group named "Sales", which has the id `668e7540-7f8e-4ca4-a207-b7dffbb6d038`.
+ Only one built-in task runs in this workflow: to send an email to the employee's manager notifying them of the move. This task is identified in Lifecycle Workflows by the **taskDefinitionId** `aab41899-9972-422a-9d97-f626014578b7`.

> [!NOTE]
> You will have to confirm what the Sales group id is in your environment, and use that id as the value.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_create_workflow"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-type: application/json

{
    "category": "mover",
    "description": "Configure mover tasks for a user when their job changes",
    "displayName": "Sales group mover task",
    "isEnabled": true,
    "isSchedulingEnabled": true,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.groupBasedSubjectSet",
            "groups": [
                {
                    "id": "668e7540-7f8e-4ca4-a207-b7dffbb6d038"
                }
            ]
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.membershipChangeTrigger",
            "changeType": "remove"
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
    "description": "Configure mover tasks for a user when their job changes",
    "displayName": "Sales group mover task",
    "isEnabled": true,
    "isSchedulingEnabled": true,
    "lastModifiedDateTime": "2024-03-26T23:56:19.2036435Z",
    "createdDateTime": "2024-03-26T23:56:19.2036342Z",
    "deletedDateTime": null,
    "id": "fe2554e1-a141-4814-a9ff-b2b526679744",
    "nextScheduleRunDateTime": "2024-03-27T00:37:08Z",
    "version": 1,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.groupBasedSubjectSet"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.membershipChangeTrigger",
            "changeType": "remove"
        }
    }
}
```

## Run the workflow

Because the workflow isn't scheduled to run, it must be run manually. In the following request, the user that's the target of the workflow is identified by ID `2390e6j8-wiu9-9030-6239-2g5y9082xc2e`. The request returns a `204 No Content` response.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_run_workflow"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/fe2554e1-a141-4814-a9ff-b2b526679744/activate

{
    "subjects": [
        {
            "id": "2390e6j8-wiu9-9030-6239-2g5y9082xc2e"
        }
    ]
}
```

---

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
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/fe2554e1-a141-4814-a9ff-b2b526679744/userProcessingResults
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('fe2554e1-a141-4814-a9ff-b2b526679744')/userProcessingResults",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/lifecycleWorkflows/workflows('<guid>')/userProcessingResults?$select=completedDateTime,failedTasksCount",
    "value": [
        {
            "id": "fe2554e1-a141-4814-a9ff-b2b526679744_1_fe2554e1-a141-4814-a9ff-b2b526679744_638470955486351520_6324d383-5034-49dc-a62d-30d61e01b613",
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
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/fe2554e1-a141-4814-a9ff-b2b526679744/userProcessingResults/summary(startDateTime=2024-03-01T00:00:00Z,endDateTime=2024-03-30T00:00:00Z)
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

## [Optional] Schedule the workflow to run automatically

After running your workflow on-demand and checking that everything is working fine, you might want to enable the workflow so that it can run automatically on a tenant-defined schedule. Run the following request.

The request returns a `204 No Content` response. When a workflow is scheduled, the Lifecycle Workflows engine checks every three hours for user objects that match the associated execution condition and executes the configured tasks for those users. You can customize this recurrence from between one hour to 24 hours.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_mover_update_workflow"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056
Content-type: application/json

{
    "isEnabled": true,
    "isSchedulingEnabled": true
}
```

---

## Related content

- [Automate employee onboarding tasks before their first day of work by using the Microsoft Entra admin center](/azure/active-directory/governance/tutorial-onboard-custom-workflow-portal)
- [Overview of Microsoft Entra Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview)
- [Overview of reporting in Microsoft Entra Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-reporting-overview)

