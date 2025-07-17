---
title: "accessReviewHistoryInstance: generateDownloadUri"
description: "Generate a URI that can be used to retrieve review history data."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# accessReviewHistoryInstance: generateDownloadUri

Namespace: microsoft.graph

Generates a URI for an [accessReviewHistoryInstance](../resources/accessReviewHistoryInstance.md) object the **status** for which is `done`. Each URI can be used to retrieve the instance's review history data. Each URI is valid for 24 hours and can be retrieved by fetching the **downloadUri** property from the [accessReviewHistoryInstance](../resources/accessReviewHistoryInstance.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessreviewhistoryinstance_generatedownloaduri" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewhistoryinstance-generatedownloaduri-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-write](../includes/rbac-for-apis/rbac-access-reviews-apis-write.md)]

The creator of the review history definition can also generate the download link.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /identityGovernance/accessReviews/historyDefinitions/{accessReviewHistoryDefinitionId}/instances/{accessReviewHistoryInstanceId}/generateDownloadUri
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and an [accessReviewHistoryInstances](../resources/accessReviewHistoryInstance.md) in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accessreviewhistoryinstance_generatedownloaduri"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/historyDefinitions/b2cb022f-b7e1-40f3-9854-c65a40861c38/instances/b2cb022f-b7e1-40f3-9854-c65a40861c38/generateDownloadUri
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accessreviewhistoryinstance-generatedownloaduri-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/accessreviewhistoryinstance-generatedownloaduri-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/accessreviewhistoryinstance-generatedownloaduri-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accessreviewhistoryinstance-generatedownloaduri-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accessreviewhistoryinstance-generatedownloaduri-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/accessreviewhistoryinstance-generatedownloaduri-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/accessreviewhistoryinstance-generatedownloaduri-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/accessreviewhistoryinstance-generatedownloaduri-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewHistoryInstance"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.accessReviewHistoryInstance",
    "id": "b2cb022f-b7e1-40f3-9854-c65a40861c38",
    "reviewHistoryPeriodStartDateTime": "2000-06-19T08:00:00Z",
    "reviewHistoryPeriodEndDateTime": "2100-06-19T07:00:00Z",
    "status": "done",
    "runDateTime": "2022-01-20T17:46:54.6085806Z",
    "fulfilledDateTime": "2022-01-20T10:00:24.9114365-08:00",
    "downloadUri": "https://dfermconsolreportusc.blob.core.windows.net/df-erm-reports/Last months reviews for ELM-e642e792-9884-413d-9299-982b37bfe369.csv?skoid=fa04d013-9f36-4d7d-8b8e-7276fb3bd36e&sktid=33e01921-4d64-4f8c-a055-5bdaffd5e33d&skt=2022-01-20T18:03:59Z&ske=2022-01-20T18:05:59Z&sks=b&skv=2020-04-08&sv=2020-04-08&st=2022-01-20T18:04:01Z&se=2022-01-21T18:04:01Z&sr=b&sp=r&sig=...",
    "expiration": "2022-02-19T10:00:24.9114365-08:00"
}
```
