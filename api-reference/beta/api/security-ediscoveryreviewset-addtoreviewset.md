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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Start the process of adding a collection from Microsoft 365 services to a review set. After the operation is created, you can get the status of the operation by retrieving the `Location` parameter from the response headers. The location provides a URL that will return a [Add to review set operation](../resources/security-ediscoveryaddtoreviewsetoperation.md).


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
POST /ediscoveryExportOperation/reviewSet/addToReviewSet
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
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetthis.addtoreviewset"
}
-->
``` http
POST https://graph.microsoft.com/beta/ediscoveryExportOperation/reviewSet/addToReviewSet
Content-Type: application/json

{
    "search": {
        "id": "7c165312-d8db-48b5-9129-1af50932df53"
    },
    "additionalDataOptions": "linkedFiles"
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
HTTP/1.1 204 No Content

{
    "location": "https://graph.microsoft.com/beta/compliance/ediscovery/cases('58399dff-cebe-478f-b1af-d3227f1fd645')/operations('a3986baecdba4112a63de26db25433bc')"
}
```