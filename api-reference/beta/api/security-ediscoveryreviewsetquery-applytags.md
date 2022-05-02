---
title: "ediscoveryReviewSetQuery: applyTags"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# ediscoveryReviewSetQuery: applyTags
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /ediscoveryExportOperation/reviewSetQuery/applyTags
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
|tagsToAdd|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|**TODO: Add Description**|
|tagsToRemove|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|**TODO: Add Description**|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetquerythis.applytags"
}
-->
``` http
POST https://graph.microsoft.com/beta/ediscoveryExportOperation/reviewSetQuery/applyTags
Content-Type: application/json
Content-length: 778

{
  "tagsToAdd": [
    {
      "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
      "id": "String (identifier)",
      "displayName": "String",
      "description": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "childSelectability": "String"
    }
  ],
  "tagsToRemove": [
    {
      "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
      "id": "String (identifier)",
      "displayName": "String",
      "description": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "childSelectability": "String"
    }
  ]
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
```

