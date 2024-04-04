---
title: "List managedIdentities (in an Azure authorization system)"
description: "Get a list of the azureManagedIdentity objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# List managedIdentities (in an Azure authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [azureManagedIdentity](../resources/azuremanagedidentity.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "azureassociatedidentities_list_managedidentities" } -->
[!INCLUDE [permissions-table](../includes/permissions/azureassociatedidentities-list-managedidentities-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/managedIdentities
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [azureManagedIdentity](../resources/azuremanagedidentity.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_azuremanagedidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/managedIdentities
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-azuremanagedidentity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.azureManagedIdentity)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "NDVjM2I2YmYtNTBjNS00MmQyLWJkNmItMGNjY2ZjZmE2NjNl",
      "externalId": "45c3b6bf-50c5-42d2-bd6b-0cccfcfa663e",
      "displayName": "managedIdentity1",
      "source": {
        "@odata.type": "#microsoft.graph.azureSource",
        "identityProviderType": "azure",
        "subscriptionId": "00f7dcae-97f9-492b-af2e-36eb35b613af"
      }
    },
    {
      "id": "YWJkNjM1ZTUtNTUyOC00NTY1LThjYWYtZjJjNjBmNGY4MGY4",
      "externalId": "abd635e5-5528-4565-8caf-f2c60f4f80f8",
      "displayName": "managedIdentity2",
      "source": {
        "@odata.type": "#microsoft.graph.azureSource",
        "identityProviderType": "azure",
        "subscriptionId": "00f7dcae-97f9-492b-af2e-36eb35b613af"
      }
    }
  ]
}
```

