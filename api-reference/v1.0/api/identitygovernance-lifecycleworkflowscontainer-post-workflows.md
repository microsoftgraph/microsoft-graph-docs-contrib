---
title: "Create workflow"
description: "Create a new workflow object. You can create up to 100 workflows in a tenant."
author: "KristinaSmith"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 10/26/2026
---

# Create workflow

Namespace: microsoft.graph.identityGovernance

Create a new [workflow](../resources/identitygovernance-workflow.md) object. You can create up to 100 workflows in a tenant.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecycleworkflowscontainer_post_workflows" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecycleworkflowscontainer-post-workflows-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-write](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/workflows
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [workflow](../resources/identitygovernance-workflow.md) object.

You can specify the following properties when creating a **workflow**.

|Property|Type|Description|
|:---|:---|:---|
|category|[microsoft.graph.identityGovernance.lifecycleWorkflowCategory](../resources/identitygovernance-workflow.md)|The category of the workflow. The possible values are: `joiner`, `leaver`, `unknownFutureValue`. Can be only one value. Required.|
|description|String|A string that describes the purpose of the workflow for administrative use.|
|displayName|String|A unique string that identifies the workflow. Required.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Defines for who and when a workflow will run. Required. |
|id|String|Identifier used for individually addressing a specific workflow.|
|isEnabled|Boolean|A Boolean value that denotes whether the workflow is set to run or not.|
|isSchedulingEnabled|Boolean|A Boolean value that denotes whether scheduling is enabled or not. |
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection| Represents the configured tasks to execute and their execution sequence within the workflow. Required. |

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) object in the response body.

## Examples

### Example 1: Create a new workflow

#### Request

The following example shows a request that creates a workflow with the following configuration:
+ It's a "joiner" workflow that's enabled and schedule to run.
+ It runs for new users that are based in Australia, on their employeeHireDate.
+ Two tasks are carried out when the workflow runs: the user's account is enabled and a "Welcome" email is sent to the user.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-Type: application/json

{
    "category": "joiner",
    "description": "Configure new hire tasks for onboarding employees on their first day",
    "displayName": "Australia Onboard new hire employee",
    "isEnabled": true,
    "isSchedulingEnabled": true,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(country eq 'Australia')"
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
            "arguments": []
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-create-workflow-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-create-workflow-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-create-workflow-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-create-workflow-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-create-workflow-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-create-workflow-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-create-workflow-from--python-snippets.md)]
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
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
    "category": "joiner",
    "description": "Configure new hire tasks for onboarding employees on their first day",
    "displayName": "New Zealand new hire",
    "lastModifiedDateTime": "2022-08-26T04:51:27.521792Z",
    "createdDateTime": "2022-08-26T04:51:27.5217824Z",
    "deletedDateTime": null,
    "id": "818cd47f-138c-4a83-b3f5-afa92bfcf391",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "nextScheduleRunDateTime": null,
    "version": 1,
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(country eq 'New Zealand')"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeHireDate",
            "offsetInDays": 0
        }
    }
}
```

### Example 2: Create a new version of a task with customized email

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_from_customemail"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
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
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-create-workflow-from-customemail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-create-workflow-from-customemail-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-create-workflow-from-customemail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-create-workflow-from-customemail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-create-workflow-from-customemail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-create-workflow-from-customemail-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-create-workflow-from-customemail-python-snippets.md)]
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
``` http
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


### Example 3: Create a mover workflow with a set target scope

#### Request

The following example shows a request that creates a workflow with the following configuration:
+ It's a "mover" workflow-enabled and set to run on-demand only.
+ It runs for users within the set target scope of the administrative units "4f9dc456-0574-4122-9e55-8b4cc494b27d" and "2c987843-e9b1-4b1a-b924-ff1d2a9b054d".
+ One task is carried out, which is to send an email to notify the user's manager of the move.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_with_administrative_scope"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-Type: application/json

{
  "category": "mover",
  "displayName": "On Demand workflow move",
  "description": "Execute real-time tasks for employee job changes",
  "tasks": [
    {
      "arguments": [],
      "description": "Send email to notify user's manager of user move",
      "displayName": "Send email to notify manager of user move",
      "isEnabled": true,
      "continueOnError": false,
      "taskDefinitionId": "aab41899-9972-422a-9d97-f626014578b7",
      "category": "mover"
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
      "id": "4f9dc456-0574-4122-9e55-8b4cc494b27d"
    },
    {
      "@odata.type": "#microsoft.graph.administrativeUnit",
      "id": "2c987843-e9b1-4b1a-b924-ff1d2a9b054d"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-create-workflow-with-administrative-scope-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-create-workflow-with-administrative-scope-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-create-workflow-with-administrative-scope-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-create-workflow-with-administrative-scope-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-create-workflow-with-administrative-scope-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-create-workflow-with-administrative-scope-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-create-workflow-with-administrative-scope-python-snippets.md)]
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
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
  "category": "mover",
  "description": "Execute real-time tasks for employee job changes",
  "displayName": "On Demand workflow move",
  "isEnabled": true,
  "isSchedulingEnabled": false,
  "lastModifiedDateTime": "2025-01-09T15:28:24.0565594Z",
  "createdDateTime": "2025-01-09T15:28:24.0565526Z",
  "id": "465d0d08-3099-483f-9d93-16aad77bcd22",
  "version": 1,
  "administrationScopeTargets": [
    {
      "@odata.type": "#microsoft.graph.administrativeUnit",
      "id": "4f9dc456-0574-4122-9e55-8b4cc494b27d"
    },
    {
      "@odata.type": "#microsoft.graph.administrativeUnit",
      "id": "2c987843-e9b1-4b1a-b924-ff1d2a9b054d"
    }
  ]
}
```

### Example 4: Create a workflow that runs seven days before a hire date

#### Request

The following example creates a joiner workflow that runs exactly seven days before a user's hire date and generates a Temporary Access Pass to send to the user's manager.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_timebasedv2_equal_before"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-Type: application/json

{
  "category": "joiner",
  "displayName": "Pre-hire onboarding: 7 days before hire",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "executionConditions": {
    "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
    "scope": {
      "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
      "rule": "(department eq 'Engineering')"
    },
    "trigger": {
      "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTriggerV2",
      "attribute": "employeeHireDate",
      "operator": {
        "@odata.type": "#microsoft.graph.identityGovernance.operatorEqualTo",
        "eventTiming": "before",
        "offsetInDays": 7
      }
    }
  },
  "tasks": [
    {
      "isEnabled": true,
      "taskDefinitionId": "1b555e50-7f65-41d5-b514-5894a026d10d",
      "displayName": "Generate Temporary Access Pass and send via email to user's manager",
      "arguments": [
        {
          "name": "tapLifetimeMinutes",
          "value": "480"
        },
        {
          "name": "tapIsUsableOnce",
          "value": "false"
        }
      ]
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
  "id": "c35e0d2a-8725-4aa1-b132-6b21a80635b5",
  "category": "joiner",
  "displayName": "Pre-hire onboarding: 7 days before hire",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "version": 1
}
```

### Example 5: Create a workflow for users within 60 days after a leave date

#### Request

The following example creates a leaver workflow that scopes users whose leave date was 60 days ago or fewer and sends an offboarding email to their managers.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_timebasedv2_lessthanequal_after"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-Type: application/json

{
  "category": "leaver",
  "displayName": "Post-leave notification: within 60 days after leave",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "executionConditions": {
    "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
    "scope": {
      "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
      "rule": "(department eq 'Finance')"
    },
    "trigger": {
      "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTriggerV2",
      "attribute": "employeeLeaveDateTime",
      "operator": {
        "@odata.type": "#microsoft.graph.identityGovernance.operatorLessThanEqualTo",
        "eventTiming": "after",
        "offsetInDays": 60
      }
    }
  },
  "tasks": [
    {
      "isEnabled": true,
      "taskDefinitionId": "6f22ddd4-b3a5-47a4-a846-0d7c201a49ce",
      "displayName": "Send offboarding email to user's manager after their last day",
      "arguments": []
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
  "id": "83d68cba-56c0-4412-8bf7-1af2befc1333",
  "category": "leaver",
  "displayName": "Post-leave notification: within 60 days after leave",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "version": 1
}
```

### Example 6: Create a workflow for users hired between 7 and 30 days ago

#### Request

The following example creates a joiner workflow that scopes users hired more than seven days and fewer than 30 days ago and sends an onboarding reminder email.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_timebasedv2_between_after"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-Type: application/json

{
  "category": "joiner",
  "displayName": "Post-hire check-in: 7 to 30 days after hire",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "executionConditions": {
    "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
    "scope": {
      "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
      "rule": "(department eq 'Engineering')"
    },
    "trigger": {
      "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTriggerV2",
      "attribute": "employeeHireDate",
      "operator": {
        "@odata.type": "#microsoft.graph.identityGovernance.operatorBetween",
        "eventTiming": "after",
        "greaterThanOffsetInDays": 7,
        "lessThanOffsetInDays": 30
      }
    }
  },
  "tasks": [
    {
      "isEnabled": true,
      "taskDefinitionId": "3c860712-2d37-42a4-928f-5c93935d26a1",
      "displayName": "Send onboarding reminder email",
      "arguments": []
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
  "id": "445ffc46-3ccc-4e1a-bac9-aef675ee8d18",
  "category": "joiner",
  "displayName": "Post-hire check-in: 7 to 30 days after hire",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "version": 1
}
```

### Example 7: Create a workflow for users between 3 and 14 days before a leave date

#### Request

The following example creates a leaver workflow that scopes users whose leave date is more than three days and fewer than 14 days in the future and sends an email to their managers before their last day.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_timebasedv2_between_before"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-Type: application/json

{
  "category": "leaver",
  "displayName": "Pre-leave prep: 3 to 14 days before leave",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "executionConditions": {
    "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
    "scope": {
      "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
      "rule": "(department eq 'Engineering')"
    },
    "trigger": {
      "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTriggerV2",
      "attribute": "employeeLeaveDateTime",
      "operator": {
        "@odata.type": "#microsoft.graph.identityGovernance.operatorBetween",
        "eventTiming": "before",
        "greaterThanOffsetInDays": 3,
        "lessThanOffsetInDays": 14
      }
    }
  },
  "tasks": [
    {
      "isEnabled": true,
      "taskDefinitionId": "52853a3e-f4e5-4eb8-bb24-1ac09a1da935",
      "displayName": "Send email to manager before user last day",
      "arguments": []
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
  "id": "6bc1a524-6df8-4cfd-ac6d-caf9f88b3702",
  "category": "leaver",
  "displayName": "Pre-leave prep: 3 to 14 days before leave",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "version": 1
}
```

### Example 8: Create a workflow that runs on a hire date

#### Request

The following example creates a joiner workflow that runs on a user's hire date and enables the user's account. When `offsetInDays` is `0`, `eventTiming` must be set to `on`.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_timebasedv2_equal_on"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-Type: application/json

{
  "category": "joiner",
  "displayName": "Day-of-hire: enable account",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "executionConditions": {
    "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
    "scope": {
      "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
      "rule": "(department eq 'Engineering')"
    },
    "trigger": {
      "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTriggerV2",
      "attribute": "employeeHireDate",
      "operator": {
        "@odata.type": "#microsoft.graph.identityGovernance.operatorEqualTo",
        "eventTiming": "on",
        "offsetInDays": 0
      }
    }
  },
  "tasks": [
    {
      "isEnabled": true,
      "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
      "displayName": "Enable user account",
      "arguments": []
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
  "id": "275fb885-528a-46f1-b5cf-cfdfb7069824",
  "category": "joiner",
  "displayName": "Day-of-hire: enable account",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "version": 1
}
```

### Example 9: Create a workflow that runs 30 days after a leave date

#### Request

The following example creates a leaver workflow that runs exactly 30 days after a user's leave date and deletes the user's account.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_timebasedv2_equal_after"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-Type: application/json

{
  "category": "leaver",
  "displayName": "Post-leave cleanup: 30 days after leave",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "executionConditions": {
    "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
    "scope": {
      "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
      "rule": "(department eq 'Engineering')"
    },
    "trigger": {
      "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTriggerV2",
      "attribute": "employeeLeaveDateTime",
      "operator": {
        "@odata.type": "#microsoft.graph.identityGovernance.operatorEqualTo",
        "eventTiming": "after",
        "offsetInDays": 30
      }
    }
  },
  "tasks": [
    {
      "isEnabled": true,
      "taskDefinitionId": "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff",
      "displayName": "Delete user",
      "arguments": []
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
  "id": "83b77dc5-751d-4640-b628-69d949b09bac",
  "category": "leaver",
  "displayName": "Post-leave cleanup: 30 days after leave",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "version": 1
}
```

### Example 10: Create a workflow for users within 14 days of a leave date

#### Request

The following example creates a leaver workflow that scopes users whose leave date is 14 days or fewer in the future and sends an email to their managers before their last day.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_workflow_timebasedv2_lessthanequal_before"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows
Content-Type: application/json

{
  "category": "leaver",
  "displayName": "Pre-leave: within 14 days of leave",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "executionConditions": {
    "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
    "scope": {
      "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
      "rule": "(department eq 'Engineering')"
    },
    "trigger": {
      "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTriggerV2",
      "attribute": "employeeLeaveDateTime",
      "operator": {
        "@odata.type": "#microsoft.graph.identityGovernance.operatorLessThanEqualTo",
        "eventTiming": "before",
        "offsetInDays": 14
      }
    }
  },
  "tasks": [
    {
      "isEnabled": true,
      "taskDefinitionId": "52853a3e-f4e5-4eb8-bb24-1ac09a1da935",
      "displayName": "Send email to manager before user last day",
      "arguments": []
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
  "id": "b784cf0f-1b6e-4e04-bb24-d2af0261514d",
  "category": "leaver",
  "displayName": "Pre-leave: within 14 days of leave",
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "version": 1
}
```
