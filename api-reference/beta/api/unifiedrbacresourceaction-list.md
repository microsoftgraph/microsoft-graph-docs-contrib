---
title: "List unifiedRbacResourceActions"
description: "Get a list of the unifiedRbacResourceAction objects and their properties."
author: "abhijeetsinha"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List unifiedRbacResourceActions
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

The following example gets the actions for the directory resource namespace with the identifier of `microsoft.insights`.

### Request
<!-- {
  "blockType": "request",
  "name": "list_unifiedrbacresourceaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/resourceNamespaces/microsoft.insights/resourceActions
```


### Response
>**Note:** The response object shown here might be shortened for readability.
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
            "id": "microsoft.insights-allEntities-allTasks",
            "name": "microsoft.insights/allEntities/allTasks"
        },
        {
            "actionVerb": "PATCH",
            "description": "Deploy and manage programs in Insights app",
            "id": "microsoft.insights-programs-update-patch",
            "name": "microsoft.insights/programs/update"
        },
        {
            "actionVerb": "GET",
            "description": "View reports and dashboard in Insights app",
            "id": "microsoft.insights-reports-read-get",
            "name": "microsoft.insights/reports/read"
        }
    ]
}
```
