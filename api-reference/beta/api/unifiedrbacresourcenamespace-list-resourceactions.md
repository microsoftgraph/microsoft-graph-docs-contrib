---
title: "List resourceActions"
description: "Get a list of the unifiedRbacResourceAction objects and their properties."
author: "DougKirschner"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List resourceActions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/resourceNamespaces/{unifiedRbacResourceNamespaceId}/resourceActions
```

## Optional query parameters
This method supports the `$filter`, `$select`, `$top`, and `$skipToken` OData query parameters to help customize the response. This method supports `$filter` (`eq`) for **actionVerb**, **description**, **id**, and **name** properties. This method returns a default page size of 100 **resourceActions** and supports `$top` and `$skipToken` for paging. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRbacResourceAction](../resources/unifiedrbacresourceaction.md) objects in the response body.

## Examples

### Example 1: Get microsoft.directory actions

The following example gets the actions for the resource namespace with the identifier of `microsoft.directory`.

This method returns a maximum of 100 actions. If there are more actions, you can use `@odata.nextLink` to get the next set of actions.

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
            "name": "microsoft.directory/accessReviews/allProperties/allTasks",
            "resourceScopeId": null
        },
        {
            "actionVerb": "GET",
            "description": "Read all properties of access reviews",
            "id": "microsoft.directory-accessReviews-allProperties-read-get",
            "name": "microsoft.directory/accessReviews/allProperties/read",
            "resourceScopeId": null
        },
        {
            "actionVerb": null,
            "description": "Manage access reviews of application role assignments in Azure AD",
            "id": "microsoft.directory-accessReviews-definitions.applications-allProperties-allTasks",
            "name": "microsoft.directory/accessReviews/definitions.applications/allProperties/allTasks",
            "resourceScopeId": null
        }
    ]
}
```

### Example 2: Get microsoft.insights actions

The following example gets the actions for the resource namespace with the identifier of `microsoft.insights`.

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
            "name": "microsoft.insights/allEntities/allProperties/allTasks",
            "resourceScopeId": null
        },
        {
            "actionVerb": null,
            "description": "Read all aspects of Viva Insights",
            "id": "microsoft.insights-allEntities-allProperties-read",
            "name": "microsoft.insights/allEntities/allProperties/read",
            "resourceScopeId": null
        },
        {
            "actionVerb": "PATCH",
            "description": "Deploy and manage programs in Insights app",
            "id": "microsoft.insights-programs-allProperties-update-patch",
            "name": "microsoft.insights/programs/allProperties/update",
            "resourceScopeId": null
        },
        {
            "actionVerb": null,
            "description": "Run and manage queries in Viva Insights",
            "id": "microsoft.insights-queries-allProperties-allTasks",
            "name": "microsoft.insights/queries/allProperties/allTasks",
            "resourceScopeId": null
        },
        {
            "actionVerb": "GET",
            "description": "View reports and dashboard in Insights app",
            "id": "microsoft.insights-reports-allProperties-read-get",
            "name": "microsoft.insights/reports/allProperties/read",
            "resourceScopeId": null
        }
    ]
}
```
