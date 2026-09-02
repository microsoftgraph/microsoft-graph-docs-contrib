---
title: "Get externalOriginResourceConnector"
description: "Read the properties and relationships of an externalOriginResourceConnector object."
author: "vikama-microsoft"
ms.date: 07/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get externalOriginResourceConnector

Namespace: microsoft.graph

Read the properties and relationships of an [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externaloriginresourceconnector_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/externaloriginresourceconnector-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/externalOriginResourceConnectors/{externalOriginResourceConnectorId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_externaloriginresourceconnector"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/externalOriginResourceConnectors/e363ebb8-6faa-4980-ac5b-eefc196e1cd4
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-externaloriginresourceconnector-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-externaloriginresourceconnector-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-externaloriginresourceconnector-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-externaloriginresourceconnector-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-externaloriginresourceconnector-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-externaloriginresourceconnector-python-snippets.md)]
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
  "@odata.type": "#microsoft.graph.externalOriginResourceConnector",
  "id": "e363ebb8-6faa-4980-ac5b-eefc196e1cd4",
  "displayName": "SAP IAG Connector",
  "description": "SAP IAG Connector description",
  "connectorType": "sapIag",
  "connectionInfo": {
    "@odata.type": "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
    "url": "https://contoso.example.com",
    "accessTokenUrl": "https://contoso.example.com/oauth/token",
    "clientId": "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
    "keyVaultName": "Keyvault",
    "secretName": "clientSecret",
    "subscriptionId": "5ee98b73-d9df-43a7-8a92-36855054bdee",
    "resourceGroup": "SAP IAG Group"
  },
  "createdBy": "admin@contoso.com",
  "createdDateTime": "2026-02-23T10:15:30Z",
  "modifiedBy": null,
  "modifiedDateTime": null
}
```
