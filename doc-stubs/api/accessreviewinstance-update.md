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
PATCH /user/pendingAccessReviewInstances/{accessReviewInstanceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|endDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|errors|[accessReviewError](../resources/accessreviewerror.md) collection|**TODO: Add Description** Optional.|
|status|String|**TODO: Add Description** Optional.|
|scope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description** Optional.|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description** Optional.|
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description** Optional.|
|customData|[accessReviewCustomData](../resources/accessreviewcustomdata.md)|**TODO: Add Description** Optional.|
|isDraft|Boolean|**TODO: Add Description** Required.|



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
PATCH https://graph.microsoft.com/beta/user/pendingAccessReviewInstances/{accessReviewInstanceId}
Content-Type: application/json
Content-length: 663

{
  "@odata.type": "#microsoft.graph.accessReviewInstance",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.accessReviewError"
    }
  ],
  "status": "String",
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "isDraft": "Boolean"
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
  "id": "1cf21beb-1beb-1cf2-eb1b-f21ceb1bf21c",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.accessReviewError"
    }
  ],
  "status": "String",
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "isDraft": "Boolean"
}
```

