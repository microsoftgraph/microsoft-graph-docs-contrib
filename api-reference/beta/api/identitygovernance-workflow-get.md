---
title: "Get workflow"
description: "Read the properties and relationships of a workflow object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get workflow

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [workflow](../resources/identitygovernance-workflow.md) object.

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
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. The **tasks** relationship is expanded by default and `$expand` is supported by the **createdBy** and **lastModifiedBy** relationships. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) object in the response body.

## Examples

### Example 1: Retrieve the details of a workflow

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_workflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/156ce798-1eb6-4e0a-8515-e79f54d04390
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-get-workflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-get-workflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-get-workflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-get-workflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-get-workflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-get-workflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows/$entity",
    "category": "joiner",
    "description": "Configure new hire tasks for onboarding employees on their first day",
    "displayName": "Onboard new hire employee",
    "lastModifiedDateTime": "2022-08-24T15:39:17.6496744Z",
    "createdDateTime": "2022-08-24T15:39:17.6496704Z",
    "deletedDateTime": null,
    "id": "156ce798-1eb6-4e0a-8515-e79f54d04390",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "nextScheduleRunDateTime": null,
    "version": 1,
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
    "tasks@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('156ce798-1eb6-4e0a-8515-e79f54d04390')/tasks",
    "tasks": [
        {
            "category": "joiner,leaver",
            "continueOnError": false,
            "description": "Enable user account in the directory",
            "displayName": "Enable User Account",
            "executionSequence": 1,
            "id": "4469d2ee-0626-4aa6-a792-84afcb9f3759",
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
            "id": "e93e4d5d-1bcd-4175-b8a1-81729e3b4df9",
            "isEnabled": true,
            "taskDefinitionId": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
            "arguments": []
        },
        {
            "category": "joiner,leaver",
            "continueOnError": false,
            "description": "Add user to selected groups",
            "displayName": "Add User To Groups",
            "executionSequence": 3,
            "id": "072a6872-6052-4d4a-93f0-a0ff3f1dec19",
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

### Example 2: Retrieve specific properties of a workflow

#### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/c0548e6c-8849-46e8-be14-8b6d2b04957e?$select=id,displayName,executionConditions,category
```

#### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows(id,displayName,executionConditions,category)/$entity",
    "category": "leaver",
    "displayName": "Pre-Offboarding employees in the R&D department",
    "id": "c0548e6c-8849-46e8-be14-8b6d2b04957e",
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(department eq 'R&D')"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeLeaveDateTime",
            "offsetInDays": -7
        }
    }
}
```
