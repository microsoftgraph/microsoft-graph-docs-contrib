---
title: "Complete employee offboarding tasks in real-time on their last day of work using Lifecycle Workflows APIs"
description: "Learn how to complete employee offboarding tasks in real-time on their last day of work using Lifecycle Workflows APIs in Microsoft Graph."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
---

# Complete employee offboarding tasks in real-time on their last day of work using Lifecycle Workflows APIs

This tutorial provides step-by-step guidance for completing a real-time employee termination with Lifecycle Workflows using Microsoft Graph.

This post off-boarding scenario will run a workflow on-demand and accomplish the following tasks:

1. Remove all licenses for user
2. Remove user from all Teams
3. Delete user account

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge), Postman, or create your own client app to call Microsoft Graph. To call Microsoft Graph APIs in this tutorial, you need to use an account with the Lifecycle Administrator or Global Administrator Azure AD role.
+ Grant yourself the following *LifecycleWorkflows.ReadWrite.All* delegated permission.
+ Create a test user account that you'll use to represent an employee leaving your organization. This test user account will be deleted when the workflow runs. Assign licenses and Teams memberships to the test user account.

## Create a "leaver" workflow

### Request

The following request creates an offboarding workflow with the following settings:

+ It can be run on-demand but not on schedule.
+ The workflow doesn't include execution conditions. Execution conditions, even when defined, are bypassed for workflows that are run on-demand.
+ Three workflow tasks are enabled to run in sequence: the user is removed from all groups, then removed from all teams, then their user account is deleted.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_create_workflow"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows
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
    "lastModifiedDateTime": "2022-10-04T08:33:01.0619748Z",
    "createdDateTime": "2022-10-04T08:33:01.0619653Z",
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

### Request

In the following request, the user for whom the workflow will run is identified by ID `8930f0c7-cdd7-4885-9260-3b4a8111de5c`.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_run_workflow"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/activate

{
    "subjects": [
        {
            "id": "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
        }
    ]
}
```

### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Check tasks and workflow status

At any time, you can monitor the status of the workflows and the tasks at three levels.

### Request

The following request retrieves the summary of tasks run at the user level.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_list_userProcessingResults"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/userProcessingResults
```

### Response

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
            "completedDateTime": "2022-10-04T08:37:47.3197648Z",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "scheduledDateTime": "2022-10-04T08:37:28.3040665Z",
            "startedDateTime": "2022-10-04T08:37:32.1018797Z",
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

### Request

You can request the aggregate high-level summary of the user-level results for a workflow, within a specified period.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_list_userProcessingResults.summary"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/userProcessingResults/summary(startDateTime=2022-10-01T00:00:00Z,endDateTime=2022-10-30T00:00:00Z)
```

### Response

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

### Request

You can also retrieve the detailed log of all tasks that were executed for a specific user in the workflow.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_leaverondemand_list_taskProcessingResults"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/368dfba3-2303-4e02-b258-87d742187e1b/userProcessingResults/bc5b9d36-55fb-4036-8551-582668a6b78e/taskProcessingResults
```

### Response

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
            "completedDateTime": "2022-10-04T08:37:37.1440809Z",
            "createdDateTime": "2022-10-04T08:37:32.6985496Z",
            "id": "0819ee66-f85c-49a2-bdbd-3bbdbb3c1797",
            "processingStatus": "completed",
            "startedDateTime": "2022-10-04T08:37:36.2260254Z",
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
            "completedDateTime": "2022-10-04T08:37:42.8173083Z",
            "createdDateTime": "2022-10-04T08:37:32.76041Z",
            "id": "f1e16080-0117-41ba-9632-74eb60a4b005",
            "processingStatus": "completed",
            "startedDateTime": "2022-10-04T08:37:38.383087Z",
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
            "completedDateTime": "2022-10-04T08:37:46.8305324Z",
            "createdDateTime": "2022-10-04T08:37:33.0279549Z",
            "id": "21d40600-259a-4581-a011-0a56d2ee6e7a",
            "processingStatus": "completed",
            "startedDateTime": "2022-10-04T08:37:46.3131624Z",
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

## Next steps

- [Execute employee offboarding tasks in real-time on their last day of work with Azure portal (preview)](/azure/active-directory/governance/tutorial-offboard-custom-workflow-portal)
- [Overview of Azure AD Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview)
- [Overview of reporting in Azure AD Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-reporting-overview)
