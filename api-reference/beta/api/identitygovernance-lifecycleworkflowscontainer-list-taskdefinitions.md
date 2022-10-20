---
title: "List taskDefinitions"
description: "Get a list of the taskDefinition objects and their properties."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List taskDefinitions

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [taskDefinition](../resources/identitygovernance-taskdefinition.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

- Global administrator
- Global reader
- Lifecycle workflows administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/taskDefinitions
```

## Optional query parameters

This method supports the `$select`, `$orderBy`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) objects in the response body.

## Examples

### Example 1: Retrieve all built-in task definitions

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_taskdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/taskDefinitions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-taskdefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-taskdefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-taskdefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-taskdefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-taskdefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-taskdefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.taskDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/taskDefinitions",
    "@odata.count": 16,
    "value": [
        {
            "category": "joiner,leaver",
            "description": "Add user to selected groups",
            "displayName": "Add User To Groups",
            "id": "22085229-5809-45e8-97fd-270d28d66910",
            "version": 1,
            "parameters": [
                {
                    "name": "groupID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        },
        {
            "category": "joiner,leaver",
            "description": "Disable user account in the directory",
            "displayName": "Disable User Account",
            "id": "1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950",
            "version": 1,
            "parameters": []
        },
        {
            "category": "joiner,leaver",
            "description": "Enable user account in the directory",
            "displayName": "Enable User Account",
            "id": "6fc52c9d-398b-4305-9763-15f42c1676fc",
            "version": 1,
            "parameters": []
        },
        {
            "category": "joiner,leaver",
            "description": "Remove user from membership of selected Azure AD groups",
            "displayName": "Remove user from selected groups",
            "id": "1953a66c-751c-45e5-8bfe-01462c70da3c",
            "version": 1,
            "parameters": [
                {
                    "name": "groupID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        },
        {
            "category": "joiner",
            "description": "Generate Temporary Access Pass and send via email to user's manager",
            "displayName": "Generate TAP And Send Email",
            "id": "1b555e50-7f65-41d5-b514-5894a026d10d",
            "version": 1,
            "parameters": [
                {
                    "name": "tapLifetimeMinutes",
                    "values": [],
                    "valueType": "string"
                },
                {
                    "name": "tapIsUsableOnce",
                    "values": [
                        "true",
                        "false"
                    ],
                    "valueType": "enum"
                }
            ]
        },
        {
            "category": "joiner",
            "description": "Send welcome email to new hire",
            "displayName": "Send Welcome Email",
            "id": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
            "version": 1,
            "parameters": []
        },
        {
            "category": "joiner,leaver",
            "description": "Add user to selected teams",
            "displayName": "Add User To Teams",
            "id": "e440ed8d-25a1-4618-84ce-091ed5be5594",
            "version": 1,
            "parameters": [
                {
                    "name": "teamID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        },
        {
            "category": "leaver",
            "description": "Delete user account in Azure AD",
            "displayName": "Delete User Account",
            "id": "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff",
            "version": 1,
            "parameters": []
        },
        {
            "category": "joiner,leaver",
            "description": "Remove user from membership of selected Teams",
            "displayName": "Remove user from selected Teams",
            "id": "06aa7acb-01af-4824-8899-b14e5ed788d6",
            "version": 1,
            "parameters": [
                {
                    "name": "teamID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        },
        {
            "category": "leaver",
            "description": "Remove user from all Azure AD groups memberships",
            "displayName": "Remove user from all groups",
            "id": "b3a31406-2a15-4c9a-b25b-a658fa5f07fc",
            "version": 1,
            "parameters": []
        },
        {
            "category": "leaver",
            "description": "Remove user from all Teams memberships",
            "displayName": "Remove user from all Teams",
            "id": "81f7b200-2816-4b3b-8c5d-dc556f07b024",
            "version": 1,
            "parameters": []
        },
        {
            "category": "leaver",
            "description": "Remove all licenses assigned to the user",
            "displayName": "Remove all licenses for user",
            "id": "8fa97d28-3e52-4985-b3a9-a1126f9b8b4e",
            "version": 1,
            "parameters": []
        },
        {
            "category": "joiner,leaver",
            "description": "Run a Custom Task Extension to callout to an external system.",
            "displayName": "Run a Custom Task Extension",
            "id": "4262b724-8dba-4fad-afc3-43fcbb497a0e",
            "version": 1,
            "parameters": [
                {
                    "name": "customTaskExtensionID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        },
        {
            "category": "leaver",
            "description": "Send offboarding email to user’s manager before the last day of work",
            "displayName": "Send email before user’s last day",
            "id": "52853a3e-f4e5-4eb8-bb24-1ac09a1da935",
            "version": 1,
            "parameters": []
        },
        {
            "category": "leaver",
            "description": "Send offboarding email to user’s manager on the last day of work",
            "displayName": "Send email on user’s last day",
            "id": "9c0a1eaf-5bda-4392-9d9e-6e155bb57411",
            "version": 1,
            "parameters": []
        },
        {
            "category": "leaver",
            "description": "Send offboarding email to user’s manager after the last day of work",
            "displayName": "Send email after user’s last day",
            "id": "6f22ddd4-b3a5-47a4-a846-0d7c201a49ce",
            "version": 1,
            "parameters": []
        }
    ]
}
```

### Example 2: Retrieve all built-in tasks supported for "joiner" workflows

#### Request

The following is an example of a request. Because the **category** is a flagged enumeration that can be one of `joiner`, `joiner,leaver`, or `leaver`, the `has` operator checks tasks where the category includes "joiner".


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_taskdefinition_filter_category"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/taskDefinitions?$filter=category has 'joiner'
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-taskdefinition-filter-category-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-taskdefinition-filter-category-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-taskdefinition-filter-category-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.taskDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/taskDefinitions",
    "value": [
        {
            "category": "joiner,leaver",
            "description": "Add user to selected groups",
            "displayName": "Add User To Groups",
            "id": "22085229-5809-45e8-97fd-270d28d66910",
            "version": 1,
            "parameters": [
                {
                    "name": "groupID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        },
        {
            "category": "joiner,leaver",
            "description": "Disable user account in the directory",
            "displayName": "Disable User Account",
            "id": "1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950",
            "version": 1,
            "parameters": []
        },
        {
            "category": "joiner,leaver",
            "description": "Enable user account in the directory",
            "displayName": "Enable User Account",
            "id": "6fc52c9d-398b-4305-9763-15f42c1676fc",
            "version": 1,
            "parameters": []
        },
        {
            "category": "joiner,leaver",
            "description": "Remove user from membership of selected Azure AD groups",
            "displayName": "Remove user from selected groups",
            "id": "1953a66c-751c-45e5-8bfe-01462c70da3c",
            "version": 1,
            "parameters": [
                {
                    "name": "groupID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        },
        {
            "category": "joiner",
            "description": "Generate Temporary Access Pass and send via email to user's manager",
            "displayName": "Generate TAP And Send Email",
            "id": "1b555e50-7f65-41d5-b514-5894a026d10d",
            "version": 1,
            "parameters": [
                {
                    "name": "tapLifetimeMinutes",
                    "values": [],
                    "valueType": "string"
                },
                {
                    "name": "tapIsUsableOnce",
                    "values": [
                        "true",
                        "false"
                    ],
                    "valueType": "enum"
                }
            ]
        },
        {
            "category": "joiner",
            "description": "Send welcome email to new hire",
            "displayName": "Send Welcome Email",
            "id": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
            "version": 1,
            "parameters": []
        },
        {
            "category": "joiner,leaver",
            "description": "Add user to selected teams",
            "displayName": "Add User To Teams",
            "id": "e440ed8d-25a1-4618-84ce-091ed5be5594",
            "version": 1,
            "parameters": [
                {
                    "name": "teamID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        },
        {
            "category": "joiner,leaver",
            "description": "Remove user from membership of selected Teams",
            "displayName": "Remove user from selected Teams",
            "id": "06aa7acb-01af-4824-8899-b14e5ed788d6",
            "version": 1,
            "parameters": [
                {
                    "name": "teamID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        },
        {
            "category": "joiner,leaver",
            "description": "Run a Custom Task Extension to callout to an external system.",
            "displayName": "Run a Custom Task Extension",
            "id": "4262b724-8dba-4fad-afc3-43fcbb497a0e",
            "version": 1,
            "parameters": [
                {
                    "name": "customTaskExtensionID",
                    "values": [],
                    "valueType": "string"
                }
            ]
        }
    ]
}
```
