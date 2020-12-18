---
title: "Create accessReviewSet"
description: "Create a new accessReviewSet object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create accessReviewSet
Namespace: microsoft.graph

Create a new accessReviewSet object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /identityGovernance/accessReviews
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessReviewSet](../resources/accessreviewset.md) object.

The following table shows the properties that are required when you create the [accessReviewSet](../resources/accessreviewset.md).

|Property|Type|Description|
|:---|:---|:---|



## Response

If successful, this method returns a `201 Created` response code and an [accessReviewSet](../resources/accessreviewset.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_accessreviewset_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews
Content-Type: application/json
Content-length: 57

{
  "@odata.type": "#microsoft.graph.accessReviewSet"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewSet"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessReviewSet"
}
```

