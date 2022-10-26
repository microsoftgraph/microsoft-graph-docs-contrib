---
title: Automate employee offboarding tasks after their last day of work using Lifecycle Workflows APIs
description: Learn how to automate employee offboarding tasks after their last day of work using Lifecycle Workflows APIs in Microsoft Graph. 
author: AlexFilipin
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: conceptualPageType
---

# Automate employee offboarding tasks after their last day of work using Lifecycle Workflows APIs

This tutorial provides step-by-step guidance for configuring offboarding tasks for employees after their last day of work using Lifecycle workflows APIs in Microsoft Graph.

This post off-boarding scenario will run a scheduled workflow and accomplish the following tasks:

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

+ It can currently be run on-demand but not on schedule. This step will allow us to validate the workflow using the test user's account. The workflow will be updated to run on schedule later in this tutorial.
+ The workflow runs seven days after the employee's employeeLeaveDateTime, and if they are in the "Marketing" department.
+ Three workflow tasks are enabled to run in sequence: the user is unassigned all licenses, then removed from all teams, then their user account is deleted.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_scheduledleaver_create_workflow"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows
Content-type: application/json

{
    "category": "leaver",
    "displayName": "Post-Offboarding of an employee",
    "description": "Configure offboarding tasks for employees after their last day of work",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "department eq 'Marketing'"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeLeaveDateTime",
            "offsetInDays": 7
        }
    },
    "tasks": [
        {
            "category": "leaver",
            "continueOnError": false,
            "description": "Remove all licenses assigned to the user",
            "displayName": "Remove all licenses for user",
            "executionSequence": 1,
            "isEnabled": true,
            "taskDefinitionId": "8fa97d28-3e52-4985-b3a9-a1126f9b8b4e",
            "arguments": []
        },
        {
            "category": "leaver",
            "continueOnError": false,
            "description": "Remove user from all Teams memberships",
            "displayName": "Remove user from all Teams",
            "executionSequence": 2,
            "isEnabled": true,
            "taskDefinitionId": "81f7b200-2816-4b3b-8c5d-dc556f07b024",
            "arguments": []
        },
        {
            "category": "leaver",
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
    "description": "Configure offboarding tasks for employees after their last day of work",
    "displayName": "Post-Offboarding of an employee",
    "lastModifiedDateTime": "2022-10-03T18:29:10.8412536Z",
    "createdDateTime": "2022-10-03T18:29:10.8412352Z",
    "deletedDateTime": null,
    "id": "15239232-66ed-445b-8292-2f5bbb2eb833",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "nextScheduleRunDateTime": null,
    "version": 1,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "department eq 'Marketing'"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeLeaveDateTime",
            "offsetInDays": 7
        }
    }
}
```

## Run the workflow

### Request

Because the workflow hasn't been scheduled to run, it must be run manually, on-demand. In the following request, the user for whom the workflow will run is identified by ID `df744d9e-2148-4922-88a8-633896c1e929`.

While you configured execution conditions for the workflow, this request to run the workflow on demand ignores the execution conditions. For example, if the user identified by ID `df744d9e-2148-4922-88a8-633896c1e929` isn't in the "Marketing" department or their employeeLeaveDateTime is set to `null`, this command will still run the tasks that were defined in the workflow, for the user.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_scheduledleaver_run_workflow"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/activate

{
    "subjects": [
        {
            "id": "df744d9e-2148-4922-88a8-633896c1e929"
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
  "name": "tutorial_lifecycle_workflows_scheduledleaver_list_userProcessingResults"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/userProcessingResults
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('15239232-66ed-445b-8292-2f5bbb2eb833')/userProcessingResults",
    "value": [
        {
            "id": "40efc576-840f-47d0-ab95-5abca800f8a2",
            "completedDateTime": "2022-10-03T18:31:00.3581066Z",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "scheduledDateTime": "2022-10-03T18:30:43.154495Z",
            "startedDateTime": "2022-10-03T18:30:46.9357178Z",
            "totalTasksCount": 3,
            "totalUnprocessedTasksCount": 0,
            "workflowExecutionType": "onDemand",
            "workflowVersion": 1,
            "subject": {
                "id": "df744d9e-2148-4922-88a8-633896c1e929"
            }
        }
    ]
}
```

### Request

You can request the aggregate high-level summary of the user-level results for a workflow, within a specified period.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_scheduledleaver_list_userProcessingResults.summary"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/userProcessingResults/summary(startDateTime=2022-10-01T00:00:00Z,endDateTime=2022-10-30T00:00:00Z)
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
  "name": "tutorial_lifecycle_workflows_scheduledleaver_list_taskProcessingResults"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/userProcessingResults/40efc576-840f-47d0-ab95-5abca800f8a2/taskProcessingResults
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('15239232-66ed-445b-8292-2f5bbb2eb833')/userProcessingResults('40efc576-840f-47d0-ab95-5abca800f8a2')/taskProcessingResults",
    "value": [
        {
            "completedDateTime": "2022-10-03T18:30:50.483365Z",
            "createdDateTime": "2022-10-03T18:30:47.6125438Z",
            "id": "78650318-7238-4e7e-852f-2c36cbeff340",
            "processingStatus": "completed",
            "startedDateTime": "2022-10-03T18:30:50.0549446Z",
            "failureReason": null,
            "subject": {
                "id": "df744d9e-2148-4922-88a8-633896c1e929"
            },
            "task": {
                "category": "leaver",
                "continueOnError": false,
                "description": "Remove all licenses assigned to the user",
                "displayName": "Remove all licenses for user",
                "executionSequence": 1,
                "id": "f71246b2-269c-4ba6-ab8e-afc1a05114cb",
                "isEnabled": true,
                "taskDefinitionId": "8fa97d28-3e52-4985-b3a9-a1126f9b8b4e",
                "arguments": []
            }
        },
        {
            "completedDateTime": "2022-10-03T18:30:57.6034021Z",
            "createdDateTime": "2022-10-03T18:30:47.8824313Z",
            "id": "3d2e459d-5614-42e4-952b-0e917b5f6646",
            "processingStatus": "completed",
            "startedDateTime": "2022-10-03T18:30:53.6770279Z",
            "failureReason": null,
            "subject": {
                "id": "df744d9e-2148-4922-88a8-633896c1e929"
            },
            "task": {
                "category": "leaver",
                "continueOnError": false,
                "description": "Remove user from all Teams memberships",
                "displayName": "Remove user from all Teams",
                "executionSequence": 2,
                "id": "ed545f03-e8d8-45fb-9cbd-15c937f2a866",
                "isEnabled": true,
                "taskDefinitionId": "81f7b200-2816-4b3b-8c5d-dc556f07b024",
                "arguments": []
            }
        },
        {
            "completedDateTime": "2022-10-03T18:31:00.0894515Z",
            "createdDateTime": "2022-10-03T18:30:48.0004721Z",
            "id": "03359fa6-c63c-4573-92c2-4c9518ca98aa",
            "processingStatus": "completed",
            "startedDateTime": "2022-10-03T18:30:59.6195169Z",
            "failureReason": null,
            "subject": {
                "id": "df744d9e-2148-4922-88a8-633896c1e929"
            },
            "task": {
                "category": "leaver",
                "continueOnError": false,
                "description": "Delete user account in Azure AD",
                "displayName": "Delete User Account",
                "executionSequence": 3,
                "id": "b4cefaa0-6ceb-461d-bbf5-ec69246463fd",
                "isEnabled": true,
                "taskDefinitionId": "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff",
                "arguments": []
            }
        }
    ]
}
```

## [Optional] Schedule the workflow to run automatically

After running your workflow on-demand and checking that everything is working fine, you may want to enable the workflow so that it can run automatically on a tenant-defined schedule. To enable the workflow schedule, you may run the following request.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_scheduledleaver_update_workflow"
}-->
```http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833
Content-type: application/json

{
    "isEnabled": true,
    "isSchedulingEnabled": true
}
```

When a workflow is scheduled, Lifecycle Workflows will check every three hours for users in the associated execution condition and execute the configured tasks for those users. You can customize this recurrence from between one hour to 24 hours.

### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## See also

- [Automate employee offboarding tasks after their last day of work with Azure portal (preview)](/azure/active-directory/governance/tutorial-scheduled-leaver-portal)
- [Overview of Azure AD Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview)
- [Overview of reporting in Azure AD Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-reporting-overview)
