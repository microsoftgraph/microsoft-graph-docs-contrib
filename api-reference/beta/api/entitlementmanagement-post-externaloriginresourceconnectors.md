---
title: "Create externalOriginResourceConnector"
description: "Create a new externalOriginResourceConnector object."
author: "vikama-microsoft"
ms.date: 02/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Create externalOriginResourceConnector

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creates a new [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entitlementmanagement_post_externaloriginresourceconnectors" } -->
[!INCLUDE [permissions-table](../includes/permissions/entitlementmanagement-post-externaloriginresourceconnectors-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/externalOriginResourceConnectors
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.

You can specify the following properties when creating an **externalOriginResourceConnector**.

|Property|Type|Description|
|:---|:---|:---|
|connectionInfo|[connectionInfo](../resources/connectioninfo.md)|The connection information for the external origin resource connector. Required.|
|connectorType|connectorType|The type of connector. The possible values are: `sapIag`, `sapAc`, `unknownFutureValue`. Required.|
|description|String|The description of the external origin resource connector. Optional.|
|displayName|String|The display name of the external origin resource connector. Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_externaloriginresourceconnector_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/externalOriginResourceConnectors
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalOriginResourceConnector",
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
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-externaloriginresourceconnector-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-externaloriginresourceconnector-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-externaloriginresourceconnector-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-externaloriginresourceconnector-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-externaloriginresourceconnector-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-externaloriginresourceconnector-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-externaloriginresourceconnector-from--python-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

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
```

