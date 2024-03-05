---
title: "Get azureManagedIdentity"
description: "Read the properties and relationships of an azureManagedIdentity object."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get azureManagedIdentity
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [azureManagedIdentity](../resources/azuremanagedidentity.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "azuremanagedidentity_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/azuremanagedidentity-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/managedIdentity/{azureManagedIdentityId}
GET /external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/managedIdentity(externalId='{externalId}')
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [azureManagedIdentity](../resources/azuremanagedidentity.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_azuremanagedidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/managedIdentities/YWJkNjM1ZTUtNTUyOC00NTY1LThjYWYtZjJjNjBmNGY4MGY4
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-azuremanagedidentity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.azureManagedIdentity"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "id": "YWJkNjM1ZTUtNTUyOC00NTY1LThjYWYtZjJjNjBmNGY4MGY4",
    "externalId": "abd635e5-5528-4565-8caf-f2c60f4f80f8",
    "displayName": "managedIdentity2",
    "source": {
      "@odata.type": "#microsoft.graph.azureSource",
      "identityProviderType": "azure",
      "subscriptionId": "00f7dcae-97f9-492b-af2e-36eb35b613af"
    }
  }
}
```

