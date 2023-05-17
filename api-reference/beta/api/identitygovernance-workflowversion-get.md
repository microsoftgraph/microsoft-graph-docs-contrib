---
title: "Get workflowVersion"
description: "Read the properties and relationships of a workflowVersion object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get workflowVersion

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [workflowVersion](../resources/identitygovernance-workflowversion.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/versions/{workflowVersionId}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) object in the response body.

## Examples

### Example 1: Get a workflow version

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_workflowversion",
  "sampleKeys": ["156ce798-1eb6-4e0a-8515-e79f54d04390", "3"]
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/156ce798-1eb6-4e0a-8515-e79f54d04390/versions/3
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-get-workflowversion-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-get-workflowversion-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-get-workflowversion-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-get-workflowversion-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-get-workflowversion-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-get-workflowversion-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflowVersion"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('156ce798-1eb6-4e0a-8515-e79f54d04390')/versions/$entity",
    "category": "joiner",
    "description": "Configure new hire tasks for onboarding employees on their first day",
    "displayName": "Global onboard new hire employee",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "lastModifiedDateTime": "2022-08-24T19:33:03.8664941Z",
    "versionNumber": 3,
    "createdDateTime": "2022-08-24T19:31:33.5534766Z",
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
    "lastModifiedBy": {
        "id": "a698128f-b34f-44db-a9f9-7661c7aba8d8"
    },
    "tasks@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('156ce798-1eb6-4e0a-8515-e79f54d04390')/versions(3)/tasks",
    "tasks": [
        {
            "category": "joiner,leaver",
            "continueOnError": false,
            "description": "Enable user account in the directory",
            "displayName": "Enable User Account",
            "executionSequence": 1,
            "id": "fafa2189-cd62-4643-a825-06cab8817086",
            "isEnabled": true,
            "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
            "arguments": []
        },
        {
            "category": "joiner",
            "continueOnError": false,
            "description": "Send welcome email to new hire",
            "displayName": "Send Welcome Email",
            "executionSequence": 2,
            "id": "5d7cb666-4f02-40c1-b300-dffb79b60e45",
            "isEnabled": true,
            "taskDefinitionId": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
            "arguments": []
        },
        {
            "category": "joiner,leaver",
            "continueOnError": false,
            "description": "Add user to selected groups",
            "displayName": "Add user to groups",
            "executionSequence": 3,
            "id": "96e30311-566d-4959-ab79-3a2685c2a4b2",
            "isEnabled": true,
            "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
            "arguments": [
                {
                    "name": "groupID",
                    "value": "e5659cb0-bcbb-4a9f-9092-90f72bd19028"
                }
            ]
        }
    ],
    "createdBy": {
        "id": "a698128f-b34f-44db-a9f9-7661c7aba8d8"
    }
}
```

### Example 2: Get specific properties of a version of a workflow

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_workflowversion_select",
  "sampleKeys": ["15239232-66ed-445b-8292-2f5bbb2eb833", "2"]
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/versions/2?$select=category,displayName,versionNumber,executionConditions&$expand=tasks
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-get-workflowversion-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-get-workflowversion-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-get-workflowversion-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-get-workflowversion-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-get-workflowversion-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-get-workflowversion-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflowVersion"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('15239232-66ed-445b-8292-2f5bbb2eb833')/versions(category,displayName,versionNumber,executionConditions,tasks())/$entity",
    "category": "leaver",
    "displayName": "Post-Offboarding of an employee",
    "versionNumber": 2,
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
    "tasks@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('15239232-66ed-445b-8292-2f5bbb2eb833')/versions(2)/tasks",
    "tasks": [
        {
            "category": "leaver",
            "continueOnError": false,
            "description": "Send offboarding email to user’s manager before the last day of work",
            "displayName": "Send email before user’s last day",
            "executionSequence": 1,
            "id": "320c8e32-225a-4624-a9fb-ef3da9d63713",
            "isEnabled": true,
            "taskDefinitionId": "52853a3e-f4e5-4eb8-bb24-1ac09a1da935",
            "arguments": []
        },
        {
            "category": "leaver",
            "continueOnError": false,
            "description": "Delete user account in Azure AD",
            "displayName": "Delete User Account",
            "executionSequence": 2,
            "id": "c455fb46-da19-4755-ab28-d9b3ff4f5662",
            "isEnabled": true,
            "taskDefinitionId": "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff",
            "arguments": []
        },
        {
            "category": "leaver",
            "continueOnError": false,
            "description": "Remove all licenses assigned to the user",
            "displayName": "Remove all licenses for user",
            "executionSequence": 3,
            "id": "08feb85b-4ce4-4d7e-98fe-aceb0c1a8439",
            "isEnabled": true,
            "taskDefinitionId": "8fa97d28-3e52-4985-b3a9-a1126f9b8b4e",
            "arguments": []
        },
        {
            "category": "leaver",
            "continueOnError": false,
            "description": "Remove user from all Teams memberships",
            "displayName": "Remove user from all Teams",
            "executionSequence": 4,
            "id": "950a0190-a76b-4287-a610-2efaa97a64f3",
            "isEnabled": true,
            "taskDefinitionId": "81f7b200-2816-4b3b-8c5d-dc556f07b024",
            "arguments": []
        }
    ]
}
```
