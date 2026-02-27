---
title: "workflow: createNewVersion"
description: "Create a new version of a lifecycle workflow object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/14/2024
---

# workflow: createNewVersion

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new version of the [workflow](../resources/identitygovernance-workflow.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_workflow_createnewversion" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-workflow-createnewversion-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-write](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion

```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|workflow|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|The workflow for which you want to create a new version.|

## Response

If successful, this action returns a `200 OK` response code and a [microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) in the response body.

## Examples

### Example 1: Create a new version of a joiner workflow with time based trigger

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_workflowthis.createnewversion"
}
-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion
Content-Type: application/json
Content-length: 631

{
    "workflow":{
        "category": "joiner",
        "description": "Configure new hire tasks for onboarding employees on their first day",
        "displayName": "Global onboard new hire employee",
        "isEnabled": true,
        "isSchedulingEnabled": false,
        "executionConditions": {
            "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
            "scope": {
                "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
                "rule": "(department eq 'Marketing')"
            },
            "trigger": {
                "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
                "timeBasedAttribute": "employeeHireDate",
                "offsetInDays": 1
            }
        },
        "tasks": [
            {
                "continueOnError": false,
                "description": "Enable user account in the directory",
                "displayName": "Enable User Account",
                "isEnabled": true,
                "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
                "arguments": []
            },
            {
                "continueOnError": false,
                "description": "Send welcome email to new hire",
                "displayName": "Send Welcome Email",
                "isEnabled": true,
                "taskDefinitionId": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
                "arguments": []
            }
        ]
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-workflowthiscreatenewversion-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-workflowthiscreatenewversion-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-workflowthiscreatenewversion-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-workflowthiscreatenewversion-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-workflowthiscreatenewversion-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-workflowthiscreatenewversion-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-workflowthiscreatenewversion-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json


{
    "workflow":{
        "category": "joiner",
        "description": "Configure new hire tasks for onboarding employees on their first day",
        "displayName": "Global onboard new hire employee",
        "isEnabled": true,
        "isSchedulingEnabled": false,
        "executionConditions": {
            "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
            "scope": {
                "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
                "rule": "(department eq 'Marketing')"
            },
            "trigger": {
                "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
                "timeBasedAttribute": "employeeHireDate",
                "offsetInDays": 1
            }
        },
        "tasks": [
            {
                "continueOnError": false,
                "description": "Enable user account in the directory",
                "displayName": "Enable User Account",
                "isEnabled": true,
                "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
                "arguments": []
            },
            {
                "continueOnError": false,
                "description": "Send welcome email to new hire",
                "displayName": "Send Welcome Email",
                "isEnabled": true,
                "taskDefinitionId": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
                "arguments": []
            }
        ]
    }
}
```

### Example 2: Create a new version of a task with customized email

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_workflowthis.createnewversion_customemail"
}
-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion
Content-Type: application/json
Content-length: 631

{
    "category": "joiner",
    "description": "Configure new hire tasks for onboarding employees on their first day",
    "displayName": "custom email marketing API test",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(department eq 'Marketing')"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeHireDate",
            "offsetInDays": 0
        }
    },
    "tasks": [
        {
            "continueOnError": false,
            "description": "Enable user account in the directory",
            "displayName": "Enable User Account",
            "isEnabled": true,
            "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
            "arguments": []
        },
        {
            "continueOnError": false,
            "description": "Send welcome email to new hire",
            "displayName": "Send Welcome Email",
            "isEnabled": true,
            "taskDefinitionId": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
            "arguments": [
                {
                    "name": "cc",
                    "value": "1baa57fa-3c4e-4526-ba5a-db47a9df95f0"
                },
                {
                    "name": "customSubject",
                    "value": "Welcome to the organization {{userDisplayName}}!"
                },
                {
                    "name": "customBody",
                    "value": "Welcome to our organization {{userGivenName}}!"
                },
                {
                    "name": "locale",
                    "value": "en-us"
                }
            ]
        }
    ]
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-workflowthiscreatenewversion-customemail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-workflowthiscreatenewversion-customemail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-workflowthiscreatenewversion-customemail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-workflowthiscreatenewversion-customemail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-workflowthiscreatenewversion-customemail-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-workflowthiscreatenewversion-customemail-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response


The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "workflow":{
        "category": "joiner",
        "description": "Configure new hire tasks for onboarding employees on their first day",
        "displayName": "Global onboard new hire employee",
        "isEnabled": true,
        "isSchedulingEnabled": false,
        "executionConditions": {
            "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
            "scope": {
                "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
                "rule": "(department eq 'Marketing')"
            },
            "trigger": {
                "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
                "timeBasedAttribute": "employeeHireDate",
                "offsetInDays": 1
            }
        },
        "tasks": [
            {
                "continueOnError": false,
                "description": "Enable user account in the directory",
                "displayName": "Enable User Account",
                "isEnabled": true,
                "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
                "arguments": []
            },
            {
                "continueOnError": false,
                "description": "Send welcome email to new hire",
                "displayName": "Send Welcome Email",
                "isEnabled": true,
                "taskDefinitionId": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
                "arguments": [
                    {
                    "name": "cc",
                    "value": "b47471b9-af8f-4a5a-bfa2-b78e82398f6e, a7a23ce0-909b-40b9-82cf-95d31f0aaca2"
                },
                {
                "name": "customSubject",
                "value": "Welcome to the organization {{userDisplayName}}!"
                },
                {
                "name": "customBody",
                "value": "Welcome to our organization {{userGivenName}} {{userSurname}}. \nFor more information, reach out to your manager {{managerDisplayName}} at {{managerEmail}}."
                },
                {
                "name": "locale",
                "value": "en-us"
                }, 
    ]
            }
        ]
    }
}
```


### Example 3: Create a new version of a workflow with specific administrative scope

#### Request

The following example shows a request.


<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_workflowthis.createnewversion_scope"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion


{
  "workflow": {
    "category": "mover",
    "displayName": "On Demand mover workflow",
    "description": "Execute real-time tasks for employee job changes",
    "tasks": [
      {
        "category": "mover",
        "continueOnError": false,
        "description": "Send email to notify user’s manager of user move",
        "displayName": "Send email to notify manager of user move",
        "executionSequence": 1,
        "id": "f09eb640-6c16-4f1a-8b48-6a295a307705",
        "isEnabled": true,
        "taskDefinitionId": "aab41899-9972-422a-9d97-f626014578b7",
        "arguments": []
      },
      {
        "arguments": [
          {
            "name": "groupID",
            "value": "8d1d1deb-2ef0-4f72-a460-729a1cc74e7e"
          }
        ],
        "description": "Add user to selected groups",
        "displayName": "Add user to groups",
        "isEnabled": true,
        "continueOnError": false,
        "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
        "category": "joiner,leaver,mover"
      }
    ],
    "executionConditions": {
      "@odata.type": "#microsoft.graph.identityGovernance.onDemandExecutionOnly"
    },
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "administrationScopeTargets": [
      {
        "@odata.type": "#microsoft.graph.administrativeUnit",
        "id": "2ae6f1b1-fcbf-4ad1-9f4f-8c5e48e364c7"
      }
    ]
  }
}
```

#### Response


The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.identityGovernance.workflow",
  "category": "mover",
  "description": "Execute real-time tasks for employee job changes",
  "displayName": "On Demand mover workflow",
  "isEnabled": true,
  "isSchedulingEnabled": false,
  "lastModifiedDateTime": "2025-01-09T15:40:14.4514101Z",
  "createdDateTime": "2025-01-09T15:28:24.0565526Z",
  "deletedDateTime": null,
  "id": "394f5831-b1c2-44b3-830d-bbcb88d4ebb0",
  "nextScheduleRunDateTime": null,
  "version": 2,
  "executionConditions": null,
  "lastModifiedBy": {
    "id": "03ad19ba-bf80-4900-bee0-7f6813ee6ecf"
  },
  "tasks@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows('465d0d08-3099-483f-9d93-16aad77bcd22')('465d0d08-3099-483f-9d93-16aad77bcd22')/tasks",
  "tasks": [
    {
      "category": "mover",
      "continueOnError": false,
      "description": "Send email to notify user’s manager of user move",
      "displayName": "Send email to notify manager of user move",
      "executionSequence": 1,
      "id": "c070b422-17e3-45a2-82a0-42b5a46c2421",
      "isEnabled": true,
      "taskDefinitionId": "aab41899-9972-422a-9d97-f626014578b7",
      "arguments": []
    },
    {
      "category": "joiner,leaver,mover",
      "continueOnError": false,
      "description": "Add user to selected groups",
      "displayName": "Add user to groups",
      "executionSequence": 2,
      "id": "71b576f8-da57-457f-a507-e7b978c56680",
      "isEnabled": true,
      "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
      "arguments": [
        {
          "name": "groupID",
          "value": "8d1d1deb-2ef0-4f72-a460-729a1cc74e7e"
        }
      ]
    }
  ],
  "createdBy": {
    "id": "03ad19ba-bf80-4900-bee0-7f6813ee6ecf"
  },
  "administrationScopeTargets": [
    {
      "@odata.type": "#microsoft.graph.administrativeUnit",
      "id": "2ae6f1b1-fcbf-4ad1-9f4f-8c5e48e364c7"
    }
  ]
}
```

### Example 4: Create a new version of a mover workflow removing a target scope

#### Request

The following example shows a request that updates a workflow with the following configuration:
+ It's a "mover" workflow-enabled and set to run on-demand only.
+ It runs for users without a set target scope as the adminsitration scope target argument is empty.
+ Two tasks are carried out, which are to send an email to notify the user's manager of the move, and to add a user to a specific group.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_with_administrative_scope_removed"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion

{
  "workflow": {
    "category": "mover",
    "displayName": "Remove existing target scope of a workflow",
    "description": "On-demand removal of the target scope of a workflow.",
    "tasks": [
      {
        "category": "mover",
        "continueOnError": false,
        "description": "Send email to notify user’s manager of user move",
        "displayName": "Send email to notify manager of user move",
        "executionSequence": 1,
        "id": "f09eb640-6c16-4f1a-8b48-6a295a307705",
        "isEnabled": true,
        "taskDefinitionId": "aab41899-9972-422a-9d97-f626014578b7",
        "arguments": []
      },
      {
        "arguments": [
          {
            "name": "groupID",
            "value": "5fa668df-a7b0-43fe-828d-48f7a1f7ca44"
          }
        ],
        "description": "Add user to selected groups",
        "displayName": "Add user to groups",
        "isEnabled": true,
        "continueOnError": false,
        "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
        "category": "joiner,leaver,mover"
      }
    ],
    "executionConditions": {
      "@odata.type": "#microsoft.graph.identityGovernance.onDemandExecutionOnly"
    },
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "administrationScopeTargets": []
  }
}
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.identityGovernance.workflow",
  "category": "mover",
  "description": "On-demand removal of the target scope of a workflow.",
  "displayName": "Remove existing target scope of a workflow",
  "isEnabled": true,
  "isSchedulingEnabled": false,
  "lastModifiedDateTime": "2025-01-09T15:40:14.4514101Z",
  "createdDateTime": "2025-01-09T15:28:24.0565526Z",
  "deletedDateTime": null,
  "id": "394f5831-b1c2-44b3-830d-bbcb88d4ebb0",
  "nextScheduleRunDateTime": null,
  "version": 2,
  "executionConditions": null,
  "lastModifiedBy": {
    "id": "2355df95-8fd8-499c-adcf-4b5f1acf713d"
  },
  "tasks@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('e64ec370-8b6c-4eb7-a692-a07ffa26dc1f')('e64ec370-8b6c-4eb7-a692-a07ffa26dc1f')/tasks",
  "tasks": [
    {
      "category": "mover",
      "continueOnError": false,
      "description": "Send email to notify user’s manager of user move",
      "displayName": "Send email to notify manager of user move",
      "executionSequence": 1,
      "id": "c070b422-17e3-45a2-82a0-42b5a46c2421",
      "isEnabled": true,
      "taskDefinitionId": "aab41899-9972-422a-9d97-f626014578b7",
      "arguments": []
    },
    {
      "category": "joiner,leaver,mover",
      "continueOnError": false,
      "description": "Add user to selected groups",
      "displayName": "Add user to groups",
      "executionSequence": 2,
      "id": "71b576f8-da57-457f-a507-e7b978c56680",
      "isEnabled": true,
      "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
      "arguments": [
        {
          "name": "groupID",
          "value": "5fa668df-a7b0-43fe-828d-48f7a1f7ca44"
        }
      ],
      "administrationScopeTargets": []
    }
  ],
  "createdBy": {
    "id": "2355df95-8fd8-499c-adcf-4b5f1acf713d"
  }
}
```

