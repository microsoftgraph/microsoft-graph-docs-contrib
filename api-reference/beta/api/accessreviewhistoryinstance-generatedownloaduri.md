---
title: "accessReviewHistoryInstance: generateDownloadUri"
description: "Generate a URI that can be used to retrieve review history data."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewHistoryInstance: generateDownloadUri

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Generates a URI for an [accessReviewHistoryInstance](../resources/accessReviewHistoryInstance.md) object the **status** for which is `done`. Each URI can be used to retrieve the instance's review history data. Each URI is valid for 24 hours and can be retrieved by fetching the **downloadUri** property from the [accessReviewHistoryInstance](../resources/accessReviewHistoryInstance.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AccessReview.ReadWrite.All|

To generate the link, the signed-in user must be either the creator of the associated review history definition, or assigned the *Global Administrator* or *Global Reader* [directory roles](/azure/active-directory/roles/permissions-reference).

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
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

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
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/historyDefinitions/b2cb022f-b7e1-40f3-9854-c65a40861c38/instances/b2cb022f-b7e1-40f3-9854-c65a40861c38/generateDownloadUri
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accessreviewhistoryinstance-generatedownloaduri-csharp-snippets.md)]
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
