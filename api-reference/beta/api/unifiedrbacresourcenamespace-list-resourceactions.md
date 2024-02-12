---
title: "List resourceActions"
description: "Get a list of the unifiedRbacResourceAction objects and their properties."
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List resourceActions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedrbacresourcenamespace_list_resourceactions" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedrbacresourcenamespace-list-resourceactions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/resourceNamespaces/{unifiedRbacResourceNamespaceId}/resourceActions
```

## Optional query parameters
This method supports the `$filter`, `$select`, `$top`, and `$skipToken` OData query parameters to help customize the response. This method supports `$filter` (`eq`) for **actionVerb**, **description**, **id**, **isPrivileged**, and **name** properties. This method returns a default page size of 100 **resourceActions** and supports `$top` and `$skipToken` for paging. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) objects in the response body.

## Examples

### Example 1: List microsoft.directory actions

The following example lists the actions for the resource namespace with the identifier of `microsoft.directory`.

This method returns a maximum of 100 actions. If there are more actions, you can use `@odata.nextLink` to get the next set of actions. To retrieve a larger set of actions, use the `$top` parameter.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrbacresourceaction_directory",
  "sampleKeys": ["microsoft.directory"]
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/resourceNamespaces/microsoft.directory/resourceActions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrbacresourceaction-directory-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-unifiedrbacresourceaction-directory-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrbacresourceaction-directory-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrbacresourceaction-directory-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrbacresourceaction-directory-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrbacresourceaction-directory-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrbacresourceaction-directory-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrbacresourceaction-directory-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here has been shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRbacResourceAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/resourceNamespaces('microsoft.directory')/resourceActions",
    "@odata.nextLink": "https://graph.microsoft.com/beta/roleManagement/directory/resourceNamespaces/microsoft.directory/resourceActions?$skiptoken=bWljcm9z...",
    "value": [
        {
            "actionVerb": null,
            "description": "Create and delete access reviews, and read and update all properties of access reviews in Azure AD",
            "id": "microsoft.directory-accessReviews-allProperties-allTasks",
            "isPrivileged": false,
            "name": "microsoft.directory/accessReviews/allProperties/allTasks",
            "resourceScopeId": null
        },
        {
            "actionVerb": "GET",
            "description": "Read all properties of access reviews",
            "id": "microsoft.directory-accessReviews-allProperties-read-get",
            "isPrivileged": false,
            "name": "microsoft.directory/accessReviews/allProperties/read",
            "resourceScopeId": null
        },
        {
            "actionVerb": null,
            "description": "Manage access reviews of application role assignments in Azure AD",
            "id": "microsoft.directory-accessReviews-definitions.applications-allProperties-allTasks",
            "isPrivileged": false,
            "name": "microsoft.directory/accessReviews/definitions.applications/allProperties/allTasks",
            "resourceScopeId": null
        }
    ]
}
```

### Example 2: List microsoft.insights actions

The following example lists the actions for the resource namespace with the identifier of `microsoft.insights`.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrbacresourceaction_insights",
  "sampleKeys": ["microsoft.insights"]
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/resourceNamespaces/microsoft.insights/resourceActions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrbacresourceaction-insights-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-unifiedrbacresourceaction-insights-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrbacresourceaction-insights-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrbacresourceaction-insights-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrbacresourceaction-insights-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrbacresourceaction-insights-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrbacresourceaction-insights-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrbacresourceaction-insights-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRbacResourceAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/resourceNamespaces('microsoft.insights')/resourceActions",
    "value": [
        {
            "actionVerb": null,
            "description": "Manage all aspects of Insights app",
            "id": "microsoft.insights-allEntities-allProperties-allTasks",
            "isPrivileged": false,
            "name": "microsoft.insights/allEntities/allProperties/allTasks",
            "resourceScopeId": null
        },
        {
            "actionVerb": null,
            "description": "Read all aspects of Viva Insights",
            "id": "microsoft.insights-allEntities-allProperties-read",
            "isPrivileged": false,
            "name": "microsoft.insights/allEntities/allProperties/read",
            "resourceScopeId": null
        },
        {
            "actionVerb": "PATCH",
            "description": "Deploy and manage programs in Insights app",
            "id": "microsoft.insights-programs-allProperties-update-patch",
            "isPrivileged": false,
            "name": "microsoft.insights/programs/allProperties/update",
            "resourceScopeId": null
        },
        {
            "actionVerb": null,
            "description": "Run and manage queries in Viva Insights",
            "id": "microsoft.insights-queries-allProperties-allTasks",
            "isPrivileged": false,
            "name": "microsoft.insights/queries/allProperties/allTasks",
            "resourceScopeId": null
        },
        {
            "actionVerb": "GET",
            "description": "View reports and dashboard in Insights app",
            "id": "microsoft.insights-reports-allProperties-read-get",
            "isPrivileged": false,
            "name": "microsoft.insights/reports/allProperties/read",
            "resourceScopeId": null
        }
    ]
}
```

### Example 3: List privileged actions

The following example lists the actions that are privileged for the resource namespace with the identifier of `microsoft.directory`.

This method returns a maximum of 100 actions. If there are more actions, you can use `@odata.nextLink` to get the next set of actions. To retrieve a larger set of actions, use the `$top` parameter.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrbacresourceaction_directory_isprivileged",
  "sampleKeys": ["microsoft.directory"]
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/resourceNamespaces/microsoft.directory/resourceActions?$filter=isPrivileged eq true
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrbacresourceaction-directory-isprivileged-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-unifiedrbacresourceaction-directory-isprivileged-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrbacresourceaction-directory-isprivileged-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrbacresourceaction-directory-isprivileged-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrbacresourceaction-directory-isprivileged-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrbacresourceaction-directory-isprivileged-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrbacresourceaction-directory-isprivileged-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrbacresourceaction-directory-isprivileged-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRbacResourceAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/resourceNamespaces('microsoft.directory')/resourceActions",
    "value": [
        {
            "actionVerb": "PATCH",
            "description": "Update application credentials",
            "id": "microsoft.directory-applications-credentials-update-patch",
            "isPrivileged": true,
            "name": "microsoft.directory/applications/credentials/update",
            "resourceScopeId": null
        },
        {
            "actionVerb": null,
            "description": "Manage all aspects of authorization policy",
            "id": "microsoft.directory-authorizationPolicy-allProperties-allTasks",
            "isPrivileged": true,
            "name": "microsoft.directory/authorizationPolicy/allProperties/allTasks",
            "resourceScopeId": null
        }
    ]
}
```
