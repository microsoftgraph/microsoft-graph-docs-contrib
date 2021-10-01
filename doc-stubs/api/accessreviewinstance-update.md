---
title: "Update accessReviewInstance"
description: "Update the properties of an accessReviewInstance object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update accessReviewInstance
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [accessReviewInstance](../resources/accessreviewinstance.md) object.

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
PATCH /me/pendingAccessReviewInstances/{accessReviewInstanceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [accessReviewInstance](../resources/accessreviewinstance.md) object.

The following table shows the properties that are required when you update the [accessReviewInstance](../resources/accessreviewinstance.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|customData|[accessReviewCustomData](../resources/accessreviewcustomdata.md)|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|errors|[accessReviewError](../resources/accessreviewerror.md) collection|**TODO: Add Description**|
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|isDraft|Boolean|**TODO: Add Description**|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|scope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|status|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [accessReviewInstance](../resources/accessreviewinstance.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_accessreviewinstance"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/pendingAccessReviewInstances/{accessReviewInstanceId}
Content-Type: application/json
Content-length: 663

{
  "@odata.type": "#microsoft.graph.accessReviewInstance",
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "endDateTime": "String (timestamp)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.accessReviewError"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "isDraft": "Boolean",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "startDateTime": "String (timestamp)",
  "status": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessReviewInstance",
  "id": "2c6d57ee-57ee-2c6d-ee57-6d2cee576d2c",
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "endDateTime": "String (timestamp)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.accessReviewError"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "isDraft": "Boolean",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "startDateTime": "String (timestamp)",
  "status": "String"
}
```

