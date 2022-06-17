---
title: "Update ediscoveryReviewSetQuery"
description: "Update the properties of an ediscoveryReviewSetQuery object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---
# Update ediscoveryReviewSetQuery
Namespace: microsoft.graph.security



Update the properties of an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.

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
PATCH /security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/queries/{queryId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the query. Required.|
|contentQuery|String|The KQL query for the review set. [Learn more.](https://docs.microsoft.com/microsoft-365/compliance/review-set-search)|



## Response

If successful, this method returns a `204 No content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoveryreviewsetquery"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/ediscoveryExportOperation/reviewSetQuery
Content-Type: application/json

{
    "displayName": "My Query 1 (update)",
    "contentQuery": "(Author=\"edisons\")"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No content.
```