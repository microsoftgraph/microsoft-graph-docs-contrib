---
title: "List workflows"
description: "Get a list of the workflow objects and their properties."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List workflows

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the workflow resources from the workflows navigation property.

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
GET /identityGovernance/lifecycleWorkflows/workflows
```

## Optional query parameters

This method supports the `$search`, `$orderBy`, and `$filter` OData query parameters to help customize the response. `$expand` is supported by the **createdBy** and **lastModifiedBy** relationships only. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) objects in the response body.

## Examples

### Example 1: Retrieve all workflows created in the tenant

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_workflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-workflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-workflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-workflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-workflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-workflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-workflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.workflow)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows",
    "value": [
        {
            "category": "joiner",
            "description": "Configure pre-hire tasks for onboarding employees before their first day",
            "displayName": "Global pre hire",
            "lastModifiedDateTime": "2022-08-16T20:05:51.4618603Z",
            "createdDateTime": "2022-01-10T20:04:30.619368Z",
            "id": "c007a148-5bf1-4f38-82b4-377fb23b1711",
            "isEnabled": true,
            "isSchedulingEnabled": true,
            "version": 12
        },
        {
            "category": "joiner",
            "description": "Configure new hire tasks for onboarding employees on their first day",
            "displayName": "Global new hire",
            "lastModifiedDateTime": "2022-08-18T17:24:42.6051254Z",
            "createdDateTime": "2022-05-06T14:10:39.9700268Z",
            "id": "559d8339-ab4e-4c41-a517-ed5d8dd9fbf5",
            "isEnabled": true,
            "isSchedulingEnabled": true,
            "version": 5
        },
        {
            "category": "joiner",
            "description": "Configure pre-hire tasks for onboarding employees before their first day",
            "displayName": "Onboard pre-hire employee",
            "lastModifiedDateTime": "2022-08-16T20:01:28.3589067Z",
            "createdDateTime": "2022-08-16T17:48:55.2262907Z",
            "id": "d0454160-b8e9-432f-8a85-790021e64c9e",
            "isEnabled": false,
            "isSchedulingEnabled": false,
            "version": 1
        },
        {
            "category": "leaver",
            "description": "Configure offboarding tasks for employees after their last day of work",
            "displayName": "Post-Offboarding of an employee",
            "lastModifiedDateTime": "2022-08-17T18:57:30.5091553Z",
            "createdDateTime": "2022-08-17T18:57:07.1840042Z",
            "id": "15f9c6db-ada8-4417-927f-17ac24b54b9b",
            "isEnabled": true,
            "isSchedulingEnabled": false,
            "version": 1
        },
        {
            "category": "leaver",
            "description": "Execute real-time termination tasks for employees on their last day of work",
            "displayName": "Real-time employee termination",
            "lastModifiedDateTime": "2022-08-19T20:34:15.4212506Z",
            "createdDateTime": "2022-08-19T20:34:15.4212481Z",
            "id": "57bc6612-2c20-4141-9dab-aa11a95b8fbc",
            "isEnabled": true,
            "isSchedulingEnabled": false,
            "version": 1
        },
        {
            "category": "joiner",
            "description": "Configure new hire tasks for onboarding employees on their first day",
            "displayName": "Onboard new hire employee",
            "lastModifiedDateTime": "2022-08-24T15:39:17.6496744Z",
            "createdDateTime": "2022-08-24T15:39:17.6496704Z",
            "id": "156ce798-1eb6-4e0a-8515-e79f54d04390",
            "isEnabled": true,
            "isSchedulingEnabled": false,
            "version": 1
        }
    ]
}
```

### Example 2: Retrieve only specific properties of "leaver" workflows

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_workflow_select"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows?$filter=category eq 'leaver'&$select=id,category,displayName,isEnabled,isSchedulingEnabled
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-workflow-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-workflow-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-workflow-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-workflow-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-workflow-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-workflow-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.workflowTemplate)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows(category,displayName,isEnabled,isSchedulingEnabled)",
    "value": [
        {
            "category": "leaver",
            "displayName": "Pre-Offboarding employees in the R&D department",
            "id": "c0548e6c-8849-46e8-be14-8b6d2b04957e",
            "isEnabled": true,
            "isSchedulingEnabled": true
        }
    ]
}
```
