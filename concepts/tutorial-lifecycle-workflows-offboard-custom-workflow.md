---
title: "Complete employee offboarding tasks in real time on their last day of work using Lifecycle Workflows APIs"
description: "Complete employee offboarding tasks in real time on their last day of work using Lifecycle Workflows APIs in Microsoft Graph."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Alexander.Filipin
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.topic: tutorial
ms.date: 03/07/2025
#Customer intent: As a developer integrating with Microsoft Graph, I want to use Lifecycle Workflows APIs to automate employee offboarding tasks, so that I can ensure proper security, efficient lifecycle management, and compliance in my organization.
---

# Complete employee offboarding tasks in real time on their last day of work using Lifecycle Workflows APIs

This tutorial provides step-by-step guidance for completing a real time employee termination with Lifecycle Workflows APIs in Microsoft Graph. In this scenario, the employee termination isn't scheduled. See [Schedule employee offboarding tasks with Lifecycle Workflows APIs](/graph/tutorial-lifecycle-workflows-scheduled-leaver) for a scheduled scenario.

In this tutorial, you learn how to:
> [!div class="checklist"]
> * Configure a lifecycle workflow to run the following tasks in sequence:
>   * Remove the user from all groups
>   * Remove user from all Teams
>   * Delete user account
> * Monitor the status of the workflow and its associated tasks.

## Prerequisites

To complete this tutorial, you need these resources and privileges:

+ This feature requires Microsoft Entra ID Governance licenses. To find the right license for your requirements, see [Microsoft Entra ID Governance licensing fundamentals](/entra/id-governance/licensing-fundamentals).
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) to call Microsoft Graph with an account that has at least the *Lifecycle Administrator* Microsoft Entra role.
+ Grant yourself the *LifecycleWorkflows.ReadWrite.All* Microsoft Graph delegated permission.
+ Create a test user account that you use to represent an employee leaving your organization. This test user account is deleted when the workflow runs. Assign licenses and Teams memberships to the test user account.

## Create a "leaver" workflow

### Request

The following request creates an offboarding workflow with these settings:

+ It can be run on-demand but not on schedule.
+ The workflow doesn't include execution conditions. Execution conditions, even when defined, are bypassed for workflows that are run on-demand.
+ Three workflow tasks are enabled to run in sequence: the user is removed from all groups, then removed from all teams, then their user account is deleted.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_create_workflow"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/LifecycleWorkflows/workflows
Content-type: application/json

{
    "category": "Leaver",
    "displayName": "Real-time employee termination",
    "description": "Execute real-time termination tasks for employees on their last day of work",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "executionConditions":{
        "@odata.type":"#microsoft.graph.identityGovernance.onDemandExecutionOnly"
    },
    "tasks": [
        {
            "continueOnError": false,
            "description": "Remove user from all Azure AD groups memberships",
            "displayName": "Remove user from all groups",
            "executionSequence": 1,
            "isEnabled": true,
            "taskDefinitionId": "b3a31406-2a15-4c9a-b25b-a658fa5f07fc",
            "arguments": []
        },
        {
            "continueOnError": false,
            "description": "Remove user from all Teams memberships",
            "displayName": "Remove user from all Teams",
            "executionSequence": 2,
            "isEnabled": true,
            "taskDefinitionId": "81f7b200-2816-4b3b-8c5d-dc556f07b024",
            "arguments": []
        },
        {
            "continueOnError": false,
            "description": "Delete user account in Azure AD",
            "displayName": "Delete User Account",
            "executionSequence": 3,
            "isEnabled": true,
            "taskDefinitionId": "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff",
            "arguments": []
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-leaverondemand-create-workflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-leaverondemand-create-workflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-leaverondemand-create-workflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-leaverondemand-create-workflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-leaverondemand-create-workflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-leaverondemand-create-workflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-leaverondemand-create-workflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-leaverondemand-create-workflow-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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
    "category": "leaver",
    "description": "Execute real-time termination tasks for employees on their last day of work",
    "displayName": "Real-time employee termination",
    "lastModifiedDateTime": "2024-03-03T08:33:01.0619748Z",
    "createdDateTime": "2024-03-03T08:33:01.0619653Z",
    "deletedDateTime": null,
    "id": "368dfba3-2303-4e02-b258-87d742187e1b",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "nextScheduleRunDateTime": null,
    "version": 1,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.onDemandExecutionOnly"
    }
}
```

## Run the workflow

In the following request, the user that's the target of the workflow is identified by ID `8930f0c7-cdd7-4885-9260-3b4a8111de5c`.

The request returns a `204 No Content` response.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_run_workflow"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/activate

{
    "subjects": [
        {
            "id": "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-leaverondemand-run-workflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-leaverondemand-run-workflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-leaverondemand-run-workflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-leaverondemand-run-workflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-leaverondemand-run-workflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-leaverondemand-run-workflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-leaverondemand-run-workflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-leaverondemand-run-workflow-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Check tasks and workflow status

Monitor the status of the workflows and tasks at three levels:

- Monitor tasks at the user level.
- Monitor the aggregate high-level summary of the user-level results for a workflow, within a specified period.
- Retrieve the detailed log of all tasks that were executed for a specific user in the workflow.

### Option 1: Monitor tasks for a workflow at the user level

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_list_userProcessingResults"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/userProcessingResults
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresults-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresults-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresults-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresults-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresults-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresults-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresults-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresults-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('368dfba3-2303-4e02-b258-87d742187e1b')/userProcessingResults",
    "value": [
        {
            "id": "bc5b9d36-55fb-4036-8551-582668a6b78e",
            "completedDateTime": "2024-03-03T08:37:47.3197648Z",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "scheduledDateTime": "2024-03-03T08:37:28.3040665Z",
            "startedDateTime": "2024-03-03T08:37:32.1018797Z",
            "totalTasksCount": 3,
            "totalUnprocessedTasksCount": 0,
            "workflowExecutionType": "onDemand",
            "workflowVersion": 1,
            "subject": {
                "id": "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
            }
        }
    ]
}
```

### Option 2: Get the aggregate high-level summary of the user-level results for a workflow, within a specified period

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_list_userProcessingResults.summary"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/userProcessingResults/summary(startDateTime=2022-10-01T00:00:00Z,endDateTime=2022-10-30T00:00:00Z)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresultssummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresultssummary-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresultssummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresultssummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresultssummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresultssummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresultssummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-leaverondemand-list-userprocessingresultssummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.identityGovernance.userSummary",
    "failedTasks": 0,
    "failedUsers": 0,
    "successfulUsers": 1,
    "totalTasks": 3,
    "totalUsers": 1
}
```

### Option 3: Retrieve the detailed log of all tasks that were executed for a specific user in the workflow

#### Request

Retrieve the detailed log of all tasks executed for a specific user in the workflow.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_list_taskProcessingResults"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/userProcessingResults/bc5b9d36-55fb-4036-8551-582668a6b78e/taskProcessingResults
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-leaverondemand-list-taskprocessingresults-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-leaverondemand-list-taskprocessingresults-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-leaverondemand-list-taskprocessingresults-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-leaverondemand-list-taskprocessingresults-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-leaverondemand-list-taskprocessingresults-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-leaverondemand-list-taskprocessingresults-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-leaverondemand-list-taskprocessingresults-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-leaverondemand-list-taskprocessingresults-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.taskProcessingResult"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('368dfba3-2303-4e02-b258-87d742187e1b')/userProcessingResults('bc5b9d36-55fb-4036-8551-582668a6b78e')/taskProcessingResults",
    "value": [
        {
            "completedDateTime": "2024-03-03T08:37:37.1440809Z",
            "createdDateTime": "2024-03-03T08:37:32.6985496Z",
            "id": "0819ee66-f85c-49a2-bdbd-3bbdbb3c1797",
            "processingStatus": "completed",
            "startedDateTime": "2024-03-03T08:37:36.2260254Z",
            "failureReason": null,
            "subject": {
                "id": "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
            },
            "task": {
                "category": "leaver",
                "continueOnError": false,
                "description": "Remove user from all Azure AD groups memberships",
                "displayName": "Remove user from all groups",
                "executionSequence": 1,
                "id": "ab400768-ff1e-4a2f-ac0e-bae5d8419613",
                "isEnabled": true,
                "taskDefinitionId": "b3a31406-2a15-4c9a-b25b-a658fa5f07fc",
                "arguments": []
            }
        },
        {
            "completedDateTime": "2024-03-03T08:37:42.8173083Z",
            "createdDateTime": "2024-03-03T08:37:32.76041Z",
            "id": "f1e16080-0117-41ba-9632-74eb60a4b005",
            "processingStatus": "completed",
            "startedDateTime": "2024-03-03T08:37:38.383087Z",
            "failureReason": null,
            "subject": {
                "id": "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
            },
            "task": {
                "category": "leaver",
                "continueOnError": false,
                "description": "Remove user from all Teams memberships",
                "displayName": "Remove user from all Teams",
                "executionSequence": 2,
                "id": "b49e306a-17ad-4bed-89cb-f312b9d30eb3",
                "isEnabled": true,
                "taskDefinitionId": "81f7b200-2816-4b3b-8c5d-dc556f07b024",
                "arguments": []
            }
        },
        {
            "completedDateTime": "2024-03-03T08:37:46.8305324Z",
            "createdDateTime": "2024-03-03T08:37:33.0279549Z",
            "id": "21d40600-259a-4581-a011-0a56d2ee6e7a",
            "processingStatus": "completed",
            "startedDateTime": "2024-03-03T08:37:46.3131624Z",
            "failureReason": null,
            "subject": {
                "id": "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
            },
            "task": {
                "category": "leaver",
                "continueOnError": false,
                "description": "Delete user account in Azure AD",
                "displayName": "Delete User Account",
                "executionSequence": 3,
                "id": "ce568616-5615-4783-a519-6bec9f13514e",
                "isEnabled": true,
                "taskDefinitionId": "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff",
                "arguments": []
            }
        }
    ]
}
```

## Related content

- [Execute employee offboarding tasks in real-time on their last day of work with the Microsoft Entra admin center](/entra/id-governance/tutorial-offboard-custom-workflow-portal)
- [Overview of Microsoft Entra Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview)
- [Overview of reporting in Microsoft Entra Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-reporting-overview)
