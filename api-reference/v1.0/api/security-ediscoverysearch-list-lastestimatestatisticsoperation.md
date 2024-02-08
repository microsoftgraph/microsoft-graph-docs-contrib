---
title: "List lastEstimateStatisticsOperation"
description: "Get the last ediscoveryEstimateOperation object and its properties."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# List lastEstimateStatisticsOperation
Namespace: microsoft.graph.security



Get the last  [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) objects and their properties.

>**Note:** This method only lists the last operation; it does not return a history of all operations.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverysearch_list_lastestimatestatisticsoperation" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverysearch-list-lastestimatestatisticsoperation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/lastEstimateStatisticsOperation
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_ediscoveryestimateoperation"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/searches/c61a5860-d634-4d14-aea7-d82b6f4eb7af/lastEstimateStatisticsOperation
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-ediscoveryestimateoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-ediscoveryestimateoperation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-ediscoveryestimateoperation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-ediscoveryestimateoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-ediscoveryestimateoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-ediscoveryestimateoperation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-ediscoveryestimateoperation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-ediscoveryestimateoperation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryEstimateOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.security.ediscoveryEstimateOperation",
    "createdDateTime": "2022-05-29T18:56:48.4649404Z",
    "completedDateTime": "2022-05-29T18:58:31.968065Z",
    "percentProgress": 100,
    "status": "succeeded",
    "action": "estimateStatistics",
    "id": "d80d2f2bc71d4544b75d4836bef4ff57",
    "indexedItemCount": 1756,
    "indexedItemsSize": 89489297,
    "unindexedItemCount": 1,
    "unindexedItemsSize": 57952,
    "mailboxCount": 4,
    "siteCount": 6,
    "createdBy": {
        "application": null,
        "user": {
            "id": "0d38933a-0bbd-41ca-9ebd-28c4b5ba7cb7",
            "displayName": null,
            "userPrincipalName": null
        }
    }
}
```

