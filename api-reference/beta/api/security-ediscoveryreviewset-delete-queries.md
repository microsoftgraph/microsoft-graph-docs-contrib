---
title: "Delete ediscoveryReviewSetQuery"
description: "Deletes an ediscoveryReviewSetQuery object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# Delete ediscoveryReviewSetQuery
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/cases/ediscoverycases/{eDiscoveryCaseId}}/reviewSets/{ediscoveryReviewSetId}/queries/{eDiscoveryReviewSetQueryId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_ediscoveryreviewsetquery"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/cases/ediscoverycases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/63ef0fd7-0db2-45eb-a9d7-7d75c8239873/queries/b7f4961d-59b1-444f-a4ec-57f2e5c2bf21
```


### Response
The following is an example of the response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

