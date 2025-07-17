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
``` http
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
``` http
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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-workflowthiscreatenewversion-cli-snippets.md)]
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
``` http
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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-workflowthiscreatenewversion-customemail-cli-snippets.md)]
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
