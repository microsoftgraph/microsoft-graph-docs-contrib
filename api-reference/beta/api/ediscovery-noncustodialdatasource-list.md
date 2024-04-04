---
title: "List noncustodialDataSources"
description: "Get a list of the noncustodialDataSource objects and their properties."
author: "mahage-msft"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: apiPageType
ms.topic: reference
---

# List noncustodialDataSources

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "ediscovery_noncustodialdatasource_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/ediscovery-noncustodialdatasource-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /compliance/ediscovery/cases/{caseId}/noncustodialDataSources
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

If successful, this method returns a `200 OK` response code and a collection of [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) objects in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_noncustodialdatasource_for_specific_caseID"
}
-->

``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/5b840b94-f821-4c4a-8cad-3a90062bf51a/noncustodialDataSources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-noncustodialdatasource-for-specific-caseid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-noncustodialdatasource-for-specific-caseid-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-noncustodialdatasource-for-specific-caseid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-noncustodialdatasource-for-specific-caseid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-noncustodialdatasource-for-specific-caseid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-noncustodialdatasource-for-specific-caseid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-noncustodialdatasource-for-specific-caseid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-noncustodialdatasource-for-specific-caseid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.ediscovery.noncustodialDataSource)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/ediscovery/cases('5b840b94-f821-4c4a-8cad-3a90062bf51a')/noncustodialDataSources",
    "value": [
        {
            "status": "Active",
            "lastModifiedDateTime": "2021-02-17T19:41:28.9144454Z",
            "releasedDateTime": "0001-01-01T00:00:00Z",
            "id": "8e402dd7f3c94a3abc086e5d07db1c6d",
            "displayName": null,
            "createdDateTime": "2021-02-17T19:41:22.9690997Z",
            "applyHoldToSource": true
        },
        {
            "status": "Active",
            "lastModifiedDateTime": "2021-02-17T19:41:28.8714643Z",
            "releasedDateTime": "0001-01-01T00:00:00Z",
            "id": "8b69818bf6af4f8a9dede428401c71e7",
            "displayName": null,
            "createdDateTime": "2021-02-17T19:41:22.958104Z",
            "applyHoldToSource": true
        }
    ]
}
```
