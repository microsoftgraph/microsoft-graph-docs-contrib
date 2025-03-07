---
title: "Automate employee onboarding tasks before their first day of work using Lifecycle Workflows APIs"
description: "Learn how to automate employee onboarding tasks before their first day of work using Lifecycle Workflows APIs in Microsoft Graph."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Alexander.Filipin
ms.topic: tutorial
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.date: 03/12/2024
#Customer intent: As a developer integrating with Microsoft Graph, I want to use Lifecycle Workflows APIs to automate employee onboarding tasks, so that I can ensure proper security, efficient lifecycle management, and compliance in my organization.
---

# Automate employee onboarding tasks before their first day of work using Lifecycle Workflows APIs

This tutorial provides step-by-step guidance for automating prehire tasks with Lifecycle Workflows APIs.

:::image type="content" source="images/tutorial-lifecycle-workflows/arch-2.png" alt-text="Screenshot of the Lifecycle Workflows scenario." lightbox="images/tutorial-lifecycle-workflows/arch-2.png":::

In this tutorial, you learn how to:

> [!div class="checklist"]
> * Configure a lifecycle workflow to check for new employees in a specific department, two days before their hire date.
> * Configure a task to generate a temporary access pass (TAP) for the new employee and send it to the new employee's manager.
> * Monitor the status of the workflow and its associated tasks.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ This feature requires Microsoft Entra ID Governance licenses. To find the right license for your requirements, see [Microsoft Entra ID Governance licensing fundamentals](/entra/id-governance/licensing-fundamentals).
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) to call Microsoft Graph with account that has at least the *Lifecycle Administrator* Microsoft Entra role.
+ Grant yourself the *LifecycleWorkflows.ReadWrite.All* Microsoft Graph delegated permission.
+ Create two user accounts to use in this tutorial: one for the new hire and another for their manager and have the following settings configured as applicable.

    | User property | Description |Set on|
    |:--- |:---|:-----|
    |mail|Used to notify manager of the new employee's temporary access pass (TAP). Both the manager and employee should have active mailboxes to receive emails.|Employee, Manager|
    |manager|This attribute that is used by the lifecycle workflow.|Employee|
    |employeeHireDate|Used to trigger the workflow. Set to today's date.|Employee|
    |department|Used to provide the scope for the workflow. Set to `Sales`.|Employee, Manager|

+ Enable the [Temporary Access Pass (TAP) policy](/entra/identity/authentication/howto-authentication-temporary-access-pass#enable-the-temporary-access-pass-policy) in your tenant and the new user enabled to use the authentication method.

## Create a "joiner" workflow

### Request

The following request creates a prehire workflow with the following settings:

+ It can be run on-demand but not on schedule.
+ The workflow runs two days before the employee's hire date, and if they are in the "Sales" department.
+ Only one built-in task runs in this workflow: to generate the TAP and send it to the new hire's manager. This task is identified in Lifecycle Workflows by the **taskDefinitionId** `1b555e50-7f65-41d5-b514-5894a026d10d`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_create_workflow"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-type: application/json

{
   "displayName":"Onboard pre-hire employee", 
   "description":"Configure pre-hire tasks for onboarding employees before their first day", 
   "isEnabled":true, 
   "isSchedulingEnabled": false,
   "executionConditions": {
       "@odata.type": "microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(department eq 'Sales')"
        },
        "trigger": {
            "@odata.type": "microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeHireDate",
            "offsetInDays": -2
        }
    }, 
   "tasks":[ 
      {
         "isEnabled":true, 
         "category": "Joiner",
         "taskDefinitionId":"1b555e50-7f65-41d5-b514-5894a026d10d", 
         "displayName":"Generate TAP And Send Email", 
         "description":"Generate Temporary Access Pass and send via email to user's manager", 
         "arguments":[ 
            { 
                "name": "tapLifetimeMinutes", 
                "value": "480" 
            }, 
            { 
                "name": "tapIsUsableOnce", 
                "value": "true" 
            }
          ]
       }  
    ]     
} 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-joineronboarding-create-workflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-joineronboarding-create-workflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-joineronboarding-create-workflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-joineronboarding-create-workflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-joineronboarding-create-workflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-joineronboarding-create-workflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-joineronboarding-create-workflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-joineronboarding-create-workflow-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
    "category": "joiner",
    "description": "Configure pre-hire tasks for onboarding employees before their first day",
    "displayName": "Onboard pre-hire employee",
    "lastModifiedDateTime": "2024-03-04T07:45:14.3410141Z",
    "createdDateTime": "2024-03-04T07:45:14.3410017Z",
    "deletedDateTime": null,
    "id": "ea71190c-075a-4ae7-9bca-34abf3b7b056",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "nextScheduleRunDateTime": null,
    "version": 1,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(department eq 'Sales')"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeHireDate",
            "offsetInDays": -2
        }
    }
}
```

## Run the workflow

Because the workflow isn't scheduled to run, it must be run manually. In the following request, the user that's the target of the workflow is identified by ID `8930f0c7-cdd7-4885-9260-3b4a8111de5c`. The request returns a `204 No Content` response.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_run_workflow"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/activate

{
    "subjects": [
        {
            "id": "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-joineronboarding-run-workflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-joineronboarding-run-workflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-joineronboarding-run-workflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-joineronboarding-run-workflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-joineronboarding-run-workflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-joineronboarding-run-workflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-joineronboarding-run-workflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-joineronboarding-run-workflow-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Check tasks and workflow status

At any time, you can monitor the status of the workflows and their associated tasks at three levels.
- Monitor tasks at the user level.
- Monitor the aggregate high-level summary of the user-level results for a workflow, within a specified period.
- Retrieve the detailed log of all tasks that were executed for a specific user in the workflow.

### Option 1: Monitor tasks for a workflow at the user level

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_list_userProcessingResults"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/userProcessingResults
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresults-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresults-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresults-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresults-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresults-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresults-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresults-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresults-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows('ea71190c-075a-4ae7-9bca-34abf3b7b056')/userProcessingResults",
    "value": [
        {
            "id": "5772d894-3bcf-4d1c-9cfc-8c182331215b",
            "completedDateTime": "2024-03-04T08:07:23.2591226Z",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "scheduledDateTime": "2024-03-04T08:07:03.8706523Z",
            "startedDateTime": "2024-03-04T08:07:09.4670969Z",
            "totalTasksCount": 1,
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
  "name": "tutorial_lifecycle_workflows_joineronboarding_list_userProcessingResults.summary"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/userProcessingResults/summary(startDateTime=2024-03-01T00:00:00Z,endDateTime=2024-03-30T00:00:00Z)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresultssummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresultssummary-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresultssummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresultssummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresultssummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresultssummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresultssummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-joineronboarding-list-userprocessingresultssummary-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.identityGovernance.userSummary",
    "failedTasks": 0,
    "failedUsers": 0,
    "successfulUsers": 1,
    "totalTasks": 1,
    "totalUsers": 1
}
```

### Option 3: Retrieve the detailed log of all tasks that were executed for a specific user in the workflow

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_list_taskProcessingResults"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/userProcessingResults/5772d894-3bcf-4d1c-9cfc-8c182331215b/taskProcessingResults
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-joineronboarding-list-taskprocessingresults-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-joineronboarding-list-taskprocessingresults-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-joineronboarding-list-taskprocessingresults-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-joineronboarding-list-taskprocessingresults-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-joineronboarding-list-taskprocessingresults-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-joineronboarding-list-taskprocessingresults-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-joineronboarding-list-taskprocessingresults-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-joineronboarding-list-taskprocessingresults-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows('ea71190c-075a-4ae7-9bca-34abf3b7b056')/userProcessingResults('5772d894-3bcf-4d1c-9cfc-8c182331215b')/taskProcessingResults",
    "value": [
        {
            "completedDateTime": "2024-03-04T08:07:15.9906441Z",
            "createdDateTime": "2024-03-04T08:07:09.8072395Z",
            "id": "227c85e4-7b84-461f-8df5-c347c2435eb2",
            "processingStatus": "completed",
            "startedDateTime": "2024-03-04T08:07:11.1595421Z",
            "failureReason": null,
            "subject": {
                "id": "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
            },
            "task": {
                "category": "joiner",
                "continueOnError": false,
                "description": "Generate Temporary Access Pass and send via email to user's manager",
                "displayName": "Generate TAP And Send Email",
                "executionSequence": 1,
                "id": "8b9b47c0-957b-4a52-8f2d-816e59c40fd2",
                "isEnabled": true,
                "taskDefinitionId": "1b555e50-7f65-41d5-b514-5894a026d10d",
                "arguments": [
                    {
                        "name": "tapLifetimeMinutes",
                        "value": "480"
                    },
                    {
                        "name": "tapIsUsableOnce",
                        "value": "true"
                    }
                ]
            }
        }
    ]
}
```

## [Optional] Schedule the workflow to run automatically

After running your workflow on-demand and checking that everything is working fine, you might want to enable the workflow so that it can run automatically on a tenant-defined schedule. Run the following request.

The request returns a `204 No Content` response. When a workflow is scheduled, the Lifecycle Workflows engine checks every three hours for user objects that match the associated execution condition and executes the configured tasks for those users. You can customize this recurrence from between one hour to 24 hours.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_update_workflow"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056
Content-type: application/json

{
    "isEnabled": true,
    "isSchedulingEnabled": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-lifecycle-workflows-joineronboarding-update-workflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-lifecycle-workflows-joineronboarding-update-workflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-lifecycle-workflows-joineronboarding-update-workflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-lifecycle-workflows-joineronboarding-update-workflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-lifecycle-workflows-joineronboarding-update-workflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-lifecycle-workflows-joineronboarding-update-workflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-lifecycle-workflows-joineronboarding-update-workflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-lifecycle-workflows-joineronboarding-update-workflow-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Related content

- [Automate employee onboarding tasks before their first day of work by using the Microsoft Entra admin center](/azure/active-directory/governance/tutorial-onboard-custom-workflow-portal)
- [Overview of Microsoft Entra Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview)
- [Overview of reporting in Microsoft Entra Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-reporting-overview)
