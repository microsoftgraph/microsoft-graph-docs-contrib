---
title: "List externalOriginResourceConnectors"
description: "Get a list of externalOriginResourceConnector objects and their properties."
author: "vikama-microsoft"
ms.date: 02/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List externalOriginResourceConnectors

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entitlementmanagement_list_externaloriginresourceconnectors" } -->
[!INCLUDE [permissions-table](../includes/permissions/entitlementmanagement-list-externaloriginresourceconnectors-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/externalOriginResourceConnectors
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_externaloriginresourceconnector"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/externalOriginResourceConnectors
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-externaloriginresourceconnector-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-externaloriginresourceconnector-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-externaloriginresourceconnector-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-externaloriginresourceconnector-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-externaloriginresourceconnector-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-externaloriginresourceconnector-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-externaloriginresourceconnector-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalOriginResourceConnector"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.externalOriginResourceConnector",
      "id": "375db7fb-280f-5d24-1abd-c63e0311c131",
      "displayName": "SAP Access Control",
      "description": "SAP Access Control connector",
      "connectorType": "sapAc",
      "connectionInfo": {
        "@odata.type": "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
        "url": "dev.test",
        "accessTokenUrl": "9e90019f-6256-41fa-a225-5ef9cc1d9bf8",
        "clientId": "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
        "keyVaultName": "Keyvault",
        "secretName": "Test",
        "subscriptionId": "5ee98b73-d9df-43a7-8a92-36855054bdee",
        "resourceGroup": "SAPIAG Group"
      },
      "createdBy": "admin@contoso.com",
      "createdDateTime": "2026-02-23T10:15:30Z",
      "modifiedBy": "admin@contoso.com",
      "modifiedDateTime": "2026-02-23T10:15:30Z"
    }
  ]
}
```

