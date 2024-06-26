---
title: "List roleDefinitions (for an Azure authorization system)"
description: "Lists all Azure roles in an Azure authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# List roleDefinitions (for an Azure authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [azureRoleDefinition](../resources/azureroledefinition.md) objects and their properties. Returns all Azure roles in an Azure authorization system.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "azureauthorizationsystem_list_roledefinitions" } -->
[!INCLUDE [permissions-table](../includes/permissions/azureauthorizationsystem-list-roledefinitions-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/roleDefinitions

```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken`  OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [azureRoleDefinition](../resources/azureroledefinition.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_azureroledefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/roleDefinitions
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-azureroledefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.azureRoleDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/roleDefinitions",
  "value": [
    {
      "id": "YjI0OTg4YWMtNjE4MC00MmEwLWFiODgtMjBmNzM4MmRkMjRj",
      "externalId": "b24988ac-6180-42a0-ab88-20f7382dd24c",
      "displayName": "Contributor",
      "azureRoleDefinitionType": "system",
      "assignableScopes": ["/"]
    },
    {
      "id": "ODg3YTk2ODgtYjBlZi00YjYxLWI1ODEtM2M3Njk5YjMzYTBk",
      "externalId": "887a9688-b0ef-4b61-b581-3c7699b33a0d",
      "displayName": "ck_pod_user_1665116757198",
      "azureRoleDefinitionType": "custom",
      "assignableScopes": ["/subscriptions/2c47abb7-ade6-4700-9a19-ac8c191a2ab8"]
    }
  ]
}
```

