---
title: "ediscoveryReviewSet: addToReviewSet"
description: "Start the process of adding a collection from Microsoft 365 services to a review set."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoveryReviewSet: addToReviewSet
Namespace: microsoft.graph.security



Start the process of adding a collection from Microsoft 365 services to a [review set](../resources/security-ediscoveryreviewset.md). After the operation is created, you can get the status of the operation by retrieving the `Location` parameter from the response headers. The location provides a URL that will return a [Add to review set operation](../resources/security-ediscoveryaddtoreviewsetoperation.md).


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
POST /security/cases/ediscoveryCases/{eDiscoveryCaseId}/reviewSets/{eDiscoveryReviewSetId}/addToReviewSet
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|search|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|The ID of the eDiscovery search you'd like to add to the review set.|
|additionalDataOptions|additionalDataOptions|The options for adding items to reviewSet.|

### additionalDataOptions values
|Name|Description|
|:---|:---|
|allVersions|include all versions of a sharepoint document matching the source collection query. Caution: SharePoint versions can significantly increase the volume of items |
|linkedFiles|include linked files that were shared in outlook, teams, or yammer messages by attaching a link to the file.|

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetthis.addtoreviewset"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/63ef0fd7-0db2-45eb-a9d7-7d75c8239873/addToReviewSet
Content-Type: application/json

{
    "search": {
        "id": "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7"
    },
    "additionalDataOptions": "linkedFiles"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoveryreviewsetthisaddtoreviewset-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoveryreviewsetthisaddtoreviewset-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryreviewsetthisaddtoreviewset-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryreviewsetthisaddtoreviewset-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoveryreviewsetthisaddtoreviewset-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```
