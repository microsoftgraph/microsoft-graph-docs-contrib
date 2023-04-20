---
title: "Create nonCustodialDataSources"
description: "Create a new ediscoveryNoncustodialDataSource object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# Create nonCustodialDataSources
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/noncustodialDataSources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.

You can specify the following properties when creating an **ediscoveryNoncustodialDataSource**.

|Property|Type|Description|
|:---|:---|:---|
|dataSource|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|Required. Either a [microsoft.graph.security.userSource](../resources/security-usersource.md) or [microsoft.graph.security.siteSource](../resources/security-sitesource.md).

For userSource, use "dataSource" : { "@odata.type" : "microsoft.graph.security.userSource", "email" : "SMTP address"}.  
For siteSource use "dataSource" : { "@odata.type" : "microsoft.graph.security.siteSource", "site@odata.bind" : "siteId" },
Alternatively use the webUrl directly, "dataSource": {"@odata.type": "microsoft.graph.security.siteSource","site": {"webUrl": `https://m365x809305.sharepoint.com/sites/Design-topsecret`}}

## Response

If successful, this method returns a `201 Created` response code and an [microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_ediscoverynoncustodialdatasource_from__wesite_url"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialDataSources
Content-Type: application/json

{
    "dataSource": {
        "@odata.type": "microsoft.graph.security.siteSource",
        "site": {
            "webUrl": "https://m365x809305.sharepoint.com/sites/Design-topsecret"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-ediscoverynoncustodialdatasource-from--wesite-url-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-ediscoverynoncustodialdatasource-from--wesite-url-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-ediscoverynoncustodialdatasource-from--wesite-url-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-ediscoverynoncustodialdatasource-from--wesite-url-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-ediscoverynoncustodialdatasource-from--wesite-url-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-ediscoverynoncustodialdatasource-from--wesite-url-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryNoncustodialDataSource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/noncustodialDataSources/$entity",
    "status": "active",
    "holdStatus": "notApplied",
    "createdDateTime": "2022-05-23T03:15:08.5354451Z",
    "lastModifiedDateTime": "2022-05-23T03:15:08.5354451Z",
    "releasedDateTime": "0001-01-01T00:00:00Z",
    "id": "43373338343345303943344434423032",
    "displayName": "Design - top secret"
}
```
