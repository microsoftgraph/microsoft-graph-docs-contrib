---
title: "Automate employee onboarding tasks before their first day of work using Lifecycle Workflows APIs"
description: "Learn how to automate employee onboarding tasks before their first day of work using Lifecycle Workflows APIs in Microsoft Graph."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
---

# Automate employee onboarding tasks before their first day of work using Lifecycle Workflows APIs

This tutorial provides step-by-step guidance for automating pre-hire tasks with Lifecycle Workflows using Microsoft Graph.

This pre-hire scenario will generate a temporary password for the new employee and send it via email to the user's new manager.

:::image type="content" source="images/tutorial-lifecycle-workflows/arch-2.png" alt-text="Screenshot of the Lifecycle Workflows scenario." lightbox="images/tutorial-lifecycle-workflows/arch-2.png":::

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant with an Azure AD Premium P2 or EMS E5 license enabled.
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge), Postman, or create your own client app to call Microsoft Graph. To call Microsoft Graph APIs in this tutorial, you need to use an account with the Lifecycle Administrator or Global Administrator Azure AD role.
+ Grant yourself the following *LifecycleWorkflows.ReadWrite.All* delegated permission.
+ You must have two user accounts to use for this tutorial, one for the new hire and another for their manager.

    | User property | Description |Set on|
    |:--- |:---:|-----|
    |mail|Used to notify manager of the new employee's temporary access pass (TAP). Both the manager and employee should have active mailboxes to receive emails.|Employee, Manager|
    |manager|This attribute that is used by the lifecycle workflow.|Employee|
    |employeeHireDate|Used to trigger the workflow. Set to today's date.|Employee|
    |department|Used to provide the scope for the workflow. Set to `Sales`.|Employee, Manager|

+ You must enable the [Temporary Access Pass (TAP) policy](/azure/active-directory/authentication/howto-authentication-temporary-access-pass#enable-the-temporary-access-pass-policy) in your tenant and the new user enabled to use the authentication method. For more information, see [temporaryAccessPassAuthenticationMethodConfiguration resource type](/graph/api/resources/temporaryaccesspassauthenticationmethodconfiguration).

<!--
The pre-hire scenario can be broken down into the following:
  - **Prerequisite:** Create two user accounts, one to represent an employee and one to represent a manager
  - **Prerequisite:** Edit the manager attribute for this scenario using Microsoft Graph Explorer
  - **Prerequisite:** Enabling and using Temporary Access Pass (TAP)
  - Creating the lifecycle management workflow
  - Triggering the workflow
  - Verifying the workflow was successfully executed
-->

## Create a "joiner" workflow

### Request

The following request creates a pre-hire workflow with the following settings:

+ It can be run on-demand but not on schedule.
+ The workflow runs two days before the employee's employeeHireDate, and if they are in the "Sales" department.
+ Only one task runs in this workflow: to generate the TAP and send it to the new hire's manager.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_create_workflow"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows
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
    "category": "joiner",
    "description": "Configure pre-hire tasks for onboarding employees before their first day",
    "displayName": "Onboard pre-hire employee",
    "lastModifiedDateTime": "2022-10-04T07:45:14.3410141Z",
    "createdDateTime": "2022-10-04T07:45:14.3410017Z",
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

### Request

Because the workflow hasn't been scheduled to run, it must be run manually. In the following request, the user for whom the workflow will run is identified by ID `8930f0c7-cdd7-4885-9260-3b4a8111de5c`.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_run_workflow"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/activate

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
  "name": "tutorial_lifecycle_workflows_joineronboarding_list_userProcessingResults"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/userProcessingResults
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('ea71190c-075a-4ae7-9bca-34abf3b7b056')/userProcessingResults",
    "value": [
        {
            "id": "5772d894-3bcf-4d1c-9cfc-8c182331215b",
            "completedDateTime": "2022-10-04T08:07:23.2591226Z",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "scheduledDateTime": "2022-10-04T08:07:03.8706523Z",
            "startedDateTime": "2022-10-04T08:07:09.4670969Z",
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

### Request

You can request the aggregate high-level summary of the user-level results for a workflow, within a specified period.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_list_userProcessingResults.summary"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/userProcessingResults/summary(startDateTime=2022-10-01T00:00:00Z,endDateTime=2022-10-30T00:00:00Z)
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
    "totalTasks": 1,
    "totalUsers": 1
}
```


### Request

You can also retrieve the detailed log of all tasks that were executed for a specific user in the workflow.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_list_taskProcessingResults"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/LifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/userProcessingResults/5772d894-3bcf-4d1c-9cfc-8c182331215b/taskProcessingResults
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('ea71190c-075a-4ae7-9bca-34abf3b7b056')/userProcessingResults('5772d894-3bcf-4d1c-9cfc-8c182331215b')/taskProcessingResults",
    "value": [
        {
            "completedDateTime": "2022-10-04T08:07:15.9906441Z",
            "createdDateTime": "2022-10-04T08:07:09.8072395Z",
            "id": "227c85e4-7b84-461f-8df5-c347c2435eb2",
            "processingStatus": "completed",
            "startedDateTime": "2022-10-04T08:07:11.1595421Z",
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

After running your workflow on-demand and checking that everything is working fine, you may want to enable the workflow so that it can run automatically on a tenant-defined schedule. To enable the workflow schedule, you may run the following request.

<!-- {
  "blockType": "request",
  "name": "tutorial_lifecycle_workflows_joineronboarding_update_workflow"
}-->
```http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056
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

- [Automate employee onboarding tasks before their first day of work with Azure portal (preview)](/azure/active-directory/governance/tutorial-onboard-custom-workflow-portal)
- [Overview of Azure AD Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview)
- [Overview of reporting in Azure AD Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-reporting-overview)
