---
title: "Get ediscoveryNoncustodialDataSource"
description: "Read the properties and relationships of an ediscoveryNoncustodialDataSource object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 06/10/2024
---

# Get ediscoveryNoncustodialDataSource
Namespace: microsoft.graph.security



Read the properties and relationships of an [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverynoncustodialdatasource_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverynoncustodialdatasource-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/noncustodialDataSources/{ediscoveryNoncustodialDataSourceId}
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

If successful, this method returns a `200 OK` response code and an [microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_ediscoverynoncustodialdatasource"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialdatasources/35393639323133394345384344303043?$expand=dataSource
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-ediscoverynoncustodialdatasource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-ediscoverynoncustodialdatasource-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-ediscoverynoncustodialdatasource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-ediscoverynoncustodialdatasource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-ediscoverynoncustodialdatasource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-ediscoverynoncustodialdatasource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-ediscoverynoncustodialdatasource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-ediscoverynoncustodialdatasource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryNoncustodialDataSource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/noncustodialDataSources(dataSource())/$entity",
    "status": "active",
    "holdStatus": "applied",
    "createdDateTime": "2022-05-23T02:09:11.1395287Z",
    "lastModifiedDateTime": "2022-05-23T02:09:11.1395287Z",
    "releasedDateTime": "0001-01-01T00:00:00Z",
    "id": "35393639323133394345384344303043",
    "displayName": "U.S. Sales",
    "dataSource@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/noncustodialDataSources('35393639323133394345384344303043')/dataSource/$entity",
    "dataSource": {
        "@odata.type": "#microsoft.graph.security.siteSource",
        "@odata.id": "https://graph.microsoft.com/v1.0/sites/169718e3-a8df-449d-bef4-ee09fe1ddc5d",
        "displayName": "U.S. Sales",
        "createdDateTime": "2022-05-23T02:09:11.1395535Z",
        "holdStatus": "0",
        "id": "169718e3-a8df-449d-bef4-ee09fe1ddc5d",
        "createdBy": {
            "application": null,
            "user": {
                "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                "displayName": null
            }
        },
        "site": {
            "webUrl": "https://m365x809305.sharepoint.com/sites/USSales",
            "id": "169718e3-a8df-449d-bef4-ee09fe1ddc5d",
            "createdDateTime": "2022-05-23T02:09:11.1395535Z"
        }
    }
}
```
